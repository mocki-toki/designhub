import 'package:shared_app/domain.dart';
import 'package:shared_app/presentation.dart';

typedef ListDataState<T> = DataState<List<T>>;

final class SeveralDataList {
  const SeveralDataList(this._dataList);

  final List _dataList;

  T get<T>() {
    try {
      return _dataList.whereType<T>().first;
    } catch (e) {
      throw Exception('Data type $T is not found');
    }
  }
}

extension SeveralDataNotifiers on List<DataNotifier> {
  // TODO: сделать виджеты
  Widget when({
    Widget Function()? initial,
    Widget Function()? loading,
    required Widget Function(SeveralDataList dataList) success,
    Widget Function(Failure failure)? failed,
  }) {
    List dataList = [];

    return _recursiveWhen(
      index: 0,
      initial: initial,
      loading: loading,
      success: success,
      failed: failed,
      dataList: dataList,
    );
  }

  Widget _recursiveWhen({
    required int index,
    Widget Function()? initial,
    Widget Function()? loading,
    required Widget Function(SeveralDataList dataList) success,
    Widget Function(Failure failure)? failed,
    required List dataList,
  }) {
    if (index == length) {
      if (dataList.isEmpty) {
        return initial?.call() ?? const DataStateInitial().stateToWidget(null);
      }

      return success(SeveralDataList(dataList));
    }

    return this[index].builder(
      builder: (context, state, child) {
        if (state.isFailed) {
          return failed?.call(state.asFailed!.failure) ??
              state.stateToWidget(context);
        } else if (state.isInitial && initial != null) {
          return initial();
        } else if (state.isLoading) {
          return loading?.call() ?? state.stateToWidget(context);
        } else if (state.isSuccess) {
          dataList.add(state.asSuccess!.data);
        } else if (state.isLoadingMore) {
          dataList.add(state.asLoadingMore!.data);
        }

        return _recursiveWhen(
          index: index + 1,
          initial: initial,
          loading: loading,
          success: success,
          failed: failed,
          dataList: dataList,
        );
      },
    );
  }
}

final class DataNotifier<T> extends ValueNotifier<DataState<T>> {
  DataNotifier([DataState<T> state = const DataStateInitial()]) : super(state);

  Widget when({
    Widget Function()? initial,
    Widget Function()? loading,
    required Widget Function(T data) success,
    Widget Function(Failure failure)? failed,
  }) {
    return ValueListenableBuilder<DataState<T>>(
      valueListenable: this,
      builder: (context, state, child) {
        if (state.isInitial) {
          return initial?.call() ?? state.stateToWidget(context);
        } else if (state.isLoading) {
          return loading?.call() ?? state.stateToWidget(context);
        } else if (state.isSuccess) {
          return success(state.asSuccess!.data);
        } else if (state.isLoadingMore) {
          return success(state.asLoadingMore!.data);
        } else if (state.isFailed) {
          return failed?.call(state.asFailed!.failure) ??
              state.stateToWidget(context);
        } else {
          throw UnsupportedError('Unsupported state: $state');
        }
      },
    );
  }

  Widget builder({
    required Widget Function(
      BuildContext context,
      DataState<T> state,
      Widget? child,
    ) builder,
    Widget? child,
  }) {
    return ValueListenableBuilder<DataState<T>>(
      valueListenable: this,
      builder: builder,
      child: child,
    );
  }

  Future<void> loadData(
    Future<DataOrFailure<T>> from, {
    T? cachedData,
    void Function(T data)? onSuccess,
    void Function(Failure failure)? onFailure,
  }) async {
    if (cachedData != null && value.isInitial) {
      value = DataStateSuccess(cachedData);
    } else {
      value = const DataStateLoading();
    }
    notifyListeners();

    final result = await from;
    result.when(
      success: (data) {
        value = DataStateSuccess(data);
        onSuccess?.call(data);
      },
      failure: (failure) {
        value = DataStateFailed(failure);
        onFailure?.call(failure);
      },
    );

    notifyListeners();
  }

  Future<void> loadMore(
    Future<DataOrFailure<T>> from, {
    void Function(T data)? onSuccess,
    void Function(Failure failure)? onFailure,
  }) async {
    if (!value.isSuccess) return;

    if (value.asSuccess?.data is! PaginatedList) {
      throw UnsupportedError(
          'Data type ${value.asSuccess?.data.runtimeType} is not PaginatedList');
    }

    final data = value.asSuccess?.data as PaginatedList;
    if (data.isEmpty || data.nextCursor == null) {
      return;
    }

    value = DataStateLoadingMore(data as T);
    notifyListeners();

    final result = await from;
    result.when(
      success: (data) {
        if (data is PaginatedList) {
          value = DataStateSuccess(
            (value.asLoadingMore?.data as PaginatedList).merge(data) as T,
          );
        } else {
          throw UnsupportedError('Data type $T is not PaginatedList');
        }
        onSuccess?.call(data);
      },
      failure: (failure) {
        value = DataStateFailed(failure);
        onFailure?.call(failure);
      },
    );
  }
}

sealed class DataState<T> {
  const DataState();

  bool get isInitial => this is DataStateInitial<T>;
  bool get isLoading => this is DataStateLoading<T>;
  bool get isSuccess => this is DataStateSuccess<T>;
  bool get isLoadingMore => this is DataStateLoadingMore<T>;
  bool get isFailed => this is DataStateFailed<T>;

  DataStateInitial<T>? get asInitial =>
      this is DataStateInitial<T> ? this as DataStateInitial<T> : null;
  DataStateLoading<T>? get asLoading =>
      this is DataStateLoading<T> ? this as DataStateLoading<T> : null;
  DataStateSuccess<T>? get asSuccess =>
      this is DataStateSuccess<T> ? this as DataStateSuccess<T> : null;
  DataStateLoadingMore<T>? get asLoadingMore =>
      this is DataStateLoadingMore<T> ? this as DataStateLoadingMore<T> : null;
  DataStateFailed<T>? get asFailed =>
      this is DataStateFailed<T> ? this as DataStateFailed<T> : null;

  Widget stateToWidget<T>(BuildContext? context) {
    switch (this) {
      case DataStateInitial<T>():
        return const SizedBox.shrink();
      case DataStateLoading<T>():
        return const Center(child: CircularProgressIndicator());
      case DataStateFailed<T>(failure: final failure):
        if (failure is NetworkFailure) {
          return Center(
            child: MessageBanner(
              message: context == null
                  ? failure.toString()
                  : failure.toLocalizedString(context),
              iconData: FontAwesomeIcons.server,
            ),
          );
        }
        return Center(
            child: Text(
          context == null
              ? failure.toString()
              : failure.toLocalizedString(context),
        ));
      default:
        throw UnsupportedError('Unsupported state: $this');
    }
  }

  A when<A>({
    required A Function() initial,
    required A Function() loading,
    required A Function(T data, Failure? failure) success,
    required A Function(T data) loadingMore,
    required A Function(Failure failure) failed,
  }) {
    switch (this) {
      case DataStateInitial<T>():
        return initial();
      case DataStateLoading<T>():
        return loading();
      case DataStateSuccess<T>(data: final data, failure: final failure):
        return success(data, failure);
      case DataStateLoadingMore<T>(data: final data):
        return loadingMore(data);
      case DataStateFailed<T>(failure: final failure):
        return failed(failure);
      default:
        throw UnsupportedError('Unsupported state: $this');
    }
  }

  A whenOrElse<A>({
    A Function()? initial,
    A Function()? loading,
    A Function(T data, Failure? failure)? success,
    A Function(T data)? loadingMore,
    A Function(Failure failure)? failed,
    required A Function() orElse,
  }) {
    switch (this) {
      case DataStateInitial<T>():
        return initial?.call() ?? orElse();
      case DataStateLoading<T>():
        return loading?.call() ?? orElse();
      case DataStateSuccess<T>(data: final data, failure: final failure):
        return success?.call(data, failure) ?? orElse();
      case DataStateLoadingMore<T>(data: final data):
        return loadingMore?.call(data) ?? orElse();
      case DataStateFailed<T>(failure: final failure):
        return failed?.call(failure) ?? orElse();
      default:
        throw UnsupportedError('Unsupported state: $this');
    }
  }

  A? whenOrNull<A>({
    A Function()? initial,
    A Function()? loading,
    A Function(T data, Failure? failure)? success,
    A Function(T data)? loadingMore,
    A Function(Failure failure)? failed,
  }) {
    switch (this) {
      case DataStateInitial<T>():
        return initial?.call();
      case DataStateLoading<T>():
        return loading?.call();
      case DataStateSuccess<T>(data: final data, failure: final failure):
        return success?.call(data, failure);
      case DataStateLoadingMore<T>(data: final data):
        return loadingMore?.call(data);
      case DataStateFailed<T>(failure: final failure):
        return failed?.call(failure);
      default:
        throw UnsupportedError('Unsupported state: $this');
    }
  }

  Widget whenOrDefault(
    BuildContext context, {
    Widget Function()? initial,
    Widget Function()? loading,
    Widget Function(T data, Failure? failure)? success,
    Widget Function(T data)? loadingMore,
    Widget Function(Failure failure)? failed,
  }) {
    switch (this) {
      case DataStateInitial<T>():
        return initial?.call() ?? stateToWidget(context);
      case DataStateLoading<T>():
        return loading?.call() ?? stateToWidget(context);
      case DataStateSuccess<T>(data: final data, failure: final failure):
        return success?.call(data, failure) ?? stateToWidget(context);
      case DataStateLoadingMore<T>(data: final data):
        return loadingMore?.call(data) ?? stateToWidget(context);
      case DataStateFailed<T>(failure: final failure):
        return failed?.call(failure) ?? stateToWidget(context);
      default:
        throw UnsupportedError('Unsupported state: $this');
    }
  }
}

final class DataStateInitial<T> extends DataState<T> {
  const DataStateInitial();
}

final class DataStateLoading<T> extends DataState<T> {
  const DataStateLoading();
}

final class DataStateSuccess<T> extends DataState<T> {
  const DataStateSuccess(this.data, [this.failure]);
  final T data;
  final Failure? failure;
}

final class DataStateLoadingMore<T> extends DataState<T> {
  const DataStateLoadingMore(this.data);
  final T data;
}

final class DataStateFailed<T> extends DataState<T> {
  const DataStateFailed(this.failure);
  final Failure failure;
}
