import 'dart:async';
import 'dart:convert';

import 'package:shared_backend/domain.dart';
import 'package:shared_backend/infrastructure.dart';

final class Required {
  const Required(this.type);
  final Type type;
}

extension ResponseExtension on RequestContext {
  Future<Response> getParametersFromQuery(
    List<String> parameters,
    List<dynamic> parameterTypes,
    Future<Response> Function(Map<String, dynamic>) callback,
  ) async {
    assert(parameters.length == parameterTypes.length);
    assert(parameterTypes.every((e) => e is Type || e is Required));

    final missingParameters = () {
      final missing = <String>[];
      for (var i = 0; i < parameters.length; i++) {
        if (parameterTypes[i] is Required) {
          final param = parameters[i];
          if (!request.uri.queryParameters.containsKey(param)) {
            missing.add(param);
          }
        }
      }
      return missing;
    }();

    final unknownParameters =
        request.uri.queryParameters.keys.where((p) => !parameters.contains(p));
    final invalidParameters = <String, Type>{};

    if (missingParameters.isNotEmpty) {
      return MissingParametersFailure(missingParameters).toResponse();
    } else if (unknownParameters.isNotEmpty) {
      return UnknownParametersFailure(unknownParameters).toResponse();
    } else {
      final parsedParameters = <String, dynamic>{};

      for (var i = 0; i < parameters.length; i++) {
        final param = parameters[i];
        final paramType = () {
          if (parameterTypes[i] is Required) {
            return (parameterTypes[i] as Required).type;
          } else {
            return parameterTypes[i];
          }
        }();

        final paramValue = request.uri.queryParameters[param];
        if (paramValue != null) {
          try {
            if (paramType == int) {
              parsedParameters[param] = int.parse(paramValue);
            } else if (paramType == double) {
              parsedParameters[param] = double.parse(paramValue);
            } else if (paramType == bool) {
              parsedParameters[param] = paramValue.toLowerCase() == 'true';
            } else if (paramType == DateTime) {
              parsedParameters[param] = DateTime.parse(paramValue);
            } else if (paramType == List || paramType == Map) {
              parsedParameters[param] = jsonDecode(paramValue);
            } else if (paramType == UuidValue) {
              parsedParameters[param] = paramValue.toUuidOrNull();
            } else if (paramType == List<UuidValue>) {
              parsedParameters[param] = paramValue
                  .split(',')
                  .map((e) => UuidValue.fromString(e))
                  .toList();
            } else {
              parsedParameters[param] = paramValue;
            }
          } catch (e) {
            invalidParameters[param] = paramType;
          }
        } else {
          if (paramType == List<UuidValue>) {
            parsedParameters[param] = <UuidValue>[];
          }
        }
      }

      if (invalidParameters.isNotEmpty) {
        return InvalidParameterTypesFailure(
          invalidParameters.keys,
          invalidParameters.values.map((e) => e.toString()),
        ).toResponse();
      }

      return callback(parsedParameters);
    }
  }

  Future<Response> getRequiredParametersFromBody(
    List<String> parameters,
    List<Type> paramenterTypes,
    Future<Response> Function(Map<String, dynamic>) callback,
  ) async {
    try {
      var body = await request.body();
      if (body.isEmpty) body = '{}';

      final json = jsonDecode(body) as Map<String, dynamic>;

      final missingParameters = parameters.where((p) => !json.containsKey(p));
      final unknownParameters = json.keys.where((p) => !parameters.contains(p));
      final invalidParameters = <String, Type>{};

      if (missingParameters.isNotEmpty) {
        return Future.value(
          MissingParametersFailure(missingParameters).toResponse(),
        );
      } else if (unknownParameters.isNotEmpty) {
        return Future.value(
          UnknownParametersFailure(unknownParameters).toResponse(),
        );
      } else {
        for (var i = 0; i < parameters.length; i++) {
          if (json[parameters[i]].runtimeType != paramenterTypes[i]) {
            invalidParameters[parameters[i]] = paramenterTypes[i];
          }
        }

        if (invalidParameters.isNotEmpty) {
          return Future.value(
            InvalidParameterTypesFailure(
              invalidParameters.keys,
              invalidParameters.values.map((e) => e.toString()),
            ).toResponse(),
          );
        }

        return callback(json);
      }
    } on FormatException catch (e) {
      return Future.value(
        InvalidBodyFormatFailure(e.toString().split(')').first + ')')
            .toResponse(),
      );
    }
  }

  T? readOrNull<T>() {
    try {
      return read<T>();
    } catch (_) {
      return null;
    }
  }
}
