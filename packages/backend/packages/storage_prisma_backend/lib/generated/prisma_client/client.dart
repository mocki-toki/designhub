// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UploadingSessionDelegate {
  const UploadingSessionDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.UploadingSession?> findUnique({
    required _i3.UploadingSessionWhereUniqueInput where,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession?>(
      action: 'findUniqueUploadingSession',
      result: result,
      factory: (e) => e != null ? _i2.UploadingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.UploadingSession> findUniqueOrThrow({
    required _i3.UploadingSessionWhereUniqueInput where,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession>(
      action: 'findUniqueUploadingSessionOrThrow',
      result: result,
      factory: (e) => _i2.UploadingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.UploadingSession?> findFirst({
    _i3.UploadingSessionWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UploadingSessionOrderByWithRelationInput>,
            _i3.UploadingSessionOrderByWithRelationInput>?
        orderBy,
    _i3.UploadingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UploadingSessionScalar,
            Iterable<_i3.UploadingSessionScalar>>?
        distinct,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession?>(
      action: 'findFirstUploadingSession',
      result: result,
      factory: (e) => e != null ? _i2.UploadingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.UploadingSession> findFirstOrThrow({
    _i3.UploadingSessionWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UploadingSessionOrderByWithRelationInput>,
            _i3.UploadingSessionOrderByWithRelationInput>?
        orderBy,
    _i3.UploadingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UploadingSessionScalar,
            Iterable<_i3.UploadingSessionScalar>>?
        distinct,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession>(
      action: 'findFirstUploadingSessionOrThrow',
      result: result,
      factory: (e) => _i2.UploadingSession.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UploadingSession>> findMany({
    _i3.UploadingSessionWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UploadingSessionOrderByWithRelationInput>,
            _i3.UploadingSessionOrderByWithRelationInput>?
        orderBy,
    _i3.UploadingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UploadingSessionScalar,
            Iterable<_i3.UploadingSessionScalar>>?
        distinct,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.UploadingSession>>(
      action: 'findManyUploadingSession',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.UploadingSession.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.UploadingSession> create({
    required _i1.PrismaUnion<_i3.UploadingSessionCreateInput,
            _i3.UploadingSessionUncheckedCreateInput>
        data,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession>(
      action: 'createOneUploadingSession',
      result: result,
      factory: (e) => _i2.UploadingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.UploadingSessionCreateManyInput,
            Iterable<_i3.UploadingSessionCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUploadingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyUploadingSessionAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.UploadingSessionCreateManyInput,
            Iterable<_i3.UploadingSessionCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyUploadingSessionAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyUploadingSessionAndReturnOutputType>>(
      action: 'createManyUploadingSessionAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyUploadingSessionAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.UploadingSession?> update({
    required _i1.PrismaUnion<_i3.UploadingSessionUpdateInput,
            _i3.UploadingSessionUncheckedUpdateInput>
        data,
    required _i3.UploadingSessionWhereUniqueInput where,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession?>(
      action: 'updateOneUploadingSession',
      result: result,
      factory: (e) => e != null ? _i2.UploadingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UploadingSessionUpdateManyMutationInput,
            _i3.UploadingSessionUncheckedUpdateManyInput>
        data,
    _i3.UploadingSessionWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUploadingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.UploadingSession> upsert({
    required _i3.UploadingSessionWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UploadingSessionCreateInput,
            _i3.UploadingSessionUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.UploadingSessionUpdateInput,
            _i3.UploadingSessionUncheckedUpdateInput>
        update,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession>(
      action: 'upsertOneUploadingSession',
      result: result,
      factory: (e) => _i2.UploadingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.UploadingSession?> delete({
    required _i3.UploadingSessionWhereUniqueInput where,
    _i3.UploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.UploadingSession?>(
      action: 'deleteOneUploadingSession',
      result: result,
      factory: (e) => e != null ? _i2.UploadingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UploadingSessionWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUploadingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UploadingSessionGroupByOutputType>> groupBy({
    _i3.UploadingSessionWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UploadingSessionOrderByWithAggregationInput>,
            _i3.UploadingSessionOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UploadingSessionScalar>,
            _i3.UploadingSessionScalar>
        by,
    _i3.UploadingSessionScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UploadingSessionGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UploadingSessionGroupByOutputType>>(
      action: 'groupByUploadingSession',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UploadingSessionGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUploadingSession> aggregate({
    _i3.UploadingSessionWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UploadingSessionOrderByWithRelationInput>,
            _i3.UploadingSessionOrderByWithRelationInput>?
        orderBy,
    _i3.UploadingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUploadingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'UploadingSession',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUploadingSession>(
      action: 'aggregateUploadingSession',
      result: result,
      factory: (e) => _i3.AggregateUploadingSession.fromJson(e),
    );
  }
}

class FileDBDelegate {
  const FileDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.FileDB?> findUnique({
    required _i3.FileDBWhereUniqueInput where,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB?>(
      action: 'findUniqueFileDB',
      result: result,
      factory: (e) => e != null ? _i2.FileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.FileDB> findUniqueOrThrow({
    required _i3.FileDBWhereUniqueInput where,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB>(
      action: 'findUniqueFileDBOrThrow',
      result: result,
      factory: (e) => _i2.FileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.FileDB?> findFirst({
    _i3.FileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FileDBOrderByWithRelationInput>,
            _i3.FileDBOrderByWithRelationInput>?
        orderBy,
    _i3.FileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FileDBScalar, Iterable<_i3.FileDBScalar>>? distinct,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB?>(
      action: 'findFirstFileDB',
      result: result,
      factory: (e) => e != null ? _i2.FileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.FileDB> findFirstOrThrow({
    _i3.FileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FileDBOrderByWithRelationInput>,
            _i3.FileDBOrderByWithRelationInput>?
        orderBy,
    _i3.FileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FileDBScalar, Iterable<_i3.FileDBScalar>>? distinct,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB>(
      action: 'findFirstFileDBOrThrow',
      result: result,
      factory: (e) => _i2.FileDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.FileDB>> findMany({
    _i3.FileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FileDBOrderByWithRelationInput>,
            _i3.FileDBOrderByWithRelationInput>?
        orderBy,
    _i3.FileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FileDBScalar, Iterable<_i3.FileDBScalar>>? distinct,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.FileDB>>(
      action: 'findManyFileDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.FileDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.FileDB> create({
    required _i1
        .PrismaUnion<_i3.FileDBCreateInput, _i3.FileDBUncheckedCreateInput>
        data,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB>(
      action: 'createOneFileDB',
      result: result,
      factory: (e) => _i2.FileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.FileDBCreateManyInput,
            Iterable<_i3.FileDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyFileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyFileDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.FileDBCreateManyInput,
            Iterable<_i3.FileDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyFileDBAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyFileDBAndReturnOutputType>>(
      action: 'createManyFileDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyFileDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.FileDB?> update({
    required _i1
        .PrismaUnion<_i3.FileDBUpdateInput, _i3.FileDBUncheckedUpdateInput>
        data,
    required _i3.FileDBWhereUniqueInput where,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB?>(
      action: 'updateOneFileDB',
      result: result,
      factory: (e) => e != null ? _i2.FileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.FileDBUpdateManyMutationInput,
            _i3.FileDBUncheckedUpdateManyInput>
        data,
    _i3.FileDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyFileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.FileDB> upsert({
    required _i3.FileDBWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.FileDBCreateInput, _i3.FileDBUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.FileDBUpdateInput, _i3.FileDBUncheckedUpdateInput>
        update,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB>(
      action: 'upsertOneFileDB',
      result: result,
      factory: (e) => _i2.FileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.FileDB?> delete({
    required _i3.FileDBWhereUniqueInput where,
    _i3.FileDBSelect? select,
    _i3.FileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.FileDB?>(
      action: 'deleteOneFileDB',
      result: result,
      factory: (e) => e != null ? _i2.FileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.FileDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyFileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.FileDBGroupByOutputType>> groupBy({
    _i3.FileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FileDBOrderByWithAggregationInput>,
            _i3.FileDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.FileDBScalar>, _i3.FileDBScalar> by,
    _i3.FileDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.FileDBGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.FileDBGroupByOutputType>>(
      action: 'groupByFileDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.FileDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateFileDB> aggregate({
    _i3.FileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FileDBOrderByWithRelationInput>,
            _i3.FileDBOrderByWithRelationInput>?
        orderBy,
    _i3.FileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateFileDBSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'FileDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateFileDB>(
      action: 'aggregateFileDB',
      result: result,
      factory: (e) => _i3.AggregateFileDB.fromJson(e),
    );
  }
}

class ImageDBDelegate {
  const ImageDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ImageDB?> findUnique({
    required _i3.ImageDBWhereUniqueInput where,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB?>(
      action: 'findUniqueImageDB',
      result: result,
      factory: (e) => e != null ? _i2.ImageDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ImageDB> findUniqueOrThrow({
    required _i3.ImageDBWhereUniqueInput where,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB>(
      action: 'findUniqueImageDBOrThrow',
      result: result,
      factory: (e) => _i2.ImageDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ImageDB?> findFirst({
    _i3.ImageDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ImageDBOrderByWithRelationInput>,
            _i3.ImageDBOrderByWithRelationInput>?
        orderBy,
    _i3.ImageDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ImageDBScalar, Iterable<_i3.ImageDBScalar>>? distinct,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB?>(
      action: 'findFirstImageDB',
      result: result,
      factory: (e) => e != null ? _i2.ImageDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ImageDB> findFirstOrThrow({
    _i3.ImageDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ImageDBOrderByWithRelationInput>,
            _i3.ImageDBOrderByWithRelationInput>?
        orderBy,
    _i3.ImageDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ImageDBScalar, Iterable<_i3.ImageDBScalar>>? distinct,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB>(
      action: 'findFirstImageDBOrThrow',
      result: result,
      factory: (e) => _i2.ImageDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ImageDB>> findMany({
    _i3.ImageDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ImageDBOrderByWithRelationInput>,
            _i3.ImageDBOrderByWithRelationInput>?
        orderBy,
    _i3.ImageDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ImageDBScalar, Iterable<_i3.ImageDBScalar>>? distinct,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ImageDB>>(
      action: 'findManyImageDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ImageDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ImageDB> create({
    required _i1
        .PrismaUnion<_i3.ImageDBCreateInput, _i3.ImageDBUncheckedCreateInput>
        data,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB>(
      action: 'createOneImageDB',
      result: result,
      factory: (e) => _i2.ImageDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ImageDBCreateManyInput,
            Iterable<_i3.ImageDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyImageDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyImageDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ImageDBCreateManyInput,
            Iterable<_i3.ImageDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyImageDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyImageDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyImageDBAndReturnOutputType>>(
      action: 'createManyImageDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyImageDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ImageDB?> update({
    required _i1
        .PrismaUnion<_i3.ImageDBUpdateInput, _i3.ImageDBUncheckedUpdateInput>
        data,
    required _i3.ImageDBWhereUniqueInput where,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB?>(
      action: 'updateOneImageDB',
      result: result,
      factory: (e) => e != null ? _i2.ImageDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ImageDBUpdateManyMutationInput,
            _i3.ImageDBUncheckedUpdateManyInput>
        data,
    _i3.ImageDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyImageDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ImageDB> upsert({
    required _i3.ImageDBWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ImageDBCreateInput, _i3.ImageDBUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ImageDBUpdateInput, _i3.ImageDBUncheckedUpdateInput>
        update,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB>(
      action: 'upsertOneImageDB',
      result: result,
      factory: (e) => _i2.ImageDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ImageDB?> delete({
    required _i3.ImageDBWhereUniqueInput where,
    _i3.ImageDBSelect? select,
    _i3.ImageDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ImageDB?>(
      action: 'deleteOneImageDB',
      result: result,
      factory: (e) => e != null ? _i2.ImageDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ImageDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyImageDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ImageDBGroupByOutputType>> groupBy({
    _i3.ImageDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ImageDBOrderByWithAggregationInput>,
            _i3.ImageDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ImageDBScalar>, _i3.ImageDBScalar> by,
    _i3.ImageDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ImageDBGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ImageDBGroupByOutputType>>(
      action: 'groupByImageDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ImageDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateImageDB> aggregate({
    _i3.ImageDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ImageDBOrderByWithRelationInput>,
            _i3.ImageDBOrderByWithRelationInput>?
        orderBy,
    _i3.ImageDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateImageDBSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ImageDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateImageDB>(
      action: 'aggregateImageDB',
      result: result,
      factory: (e) => _i3.AggregateImageDB.fromJson(e),
    );
  }
}

class VideoDBDelegate {
  const VideoDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.VideoDB?> findUnique({
    required _i3.VideoDBWhereUniqueInput where,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB?>(
      action: 'findUniqueVideoDB',
      result: result,
      factory: (e) => e != null ? _i2.VideoDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.VideoDB> findUniqueOrThrow({
    required _i3.VideoDBWhereUniqueInput where,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB>(
      action: 'findUniqueVideoDBOrThrow',
      result: result,
      factory: (e) => _i2.VideoDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VideoDB?> findFirst({
    _i3.VideoDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.VideoDBOrderByWithRelationInput>,
            _i3.VideoDBOrderByWithRelationInput>?
        orderBy,
    _i3.VideoDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.VideoDBScalar, Iterable<_i3.VideoDBScalar>>? distinct,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB?>(
      action: 'findFirstVideoDB',
      result: result,
      factory: (e) => e != null ? _i2.VideoDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.VideoDB> findFirstOrThrow({
    _i3.VideoDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.VideoDBOrderByWithRelationInput>,
            _i3.VideoDBOrderByWithRelationInput>?
        orderBy,
    _i3.VideoDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.VideoDBScalar, Iterable<_i3.VideoDBScalar>>? distinct,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB>(
      action: 'findFirstVideoDBOrThrow',
      result: result,
      factory: (e) => _i2.VideoDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.VideoDB>> findMany({
    _i3.VideoDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.VideoDBOrderByWithRelationInput>,
            _i3.VideoDBOrderByWithRelationInput>?
        orderBy,
    _i3.VideoDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.VideoDBScalar, Iterable<_i3.VideoDBScalar>>? distinct,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.VideoDB>>(
      action: 'findManyVideoDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.VideoDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.VideoDB> create({
    required _i1
        .PrismaUnion<_i3.VideoDBCreateInput, _i3.VideoDBUncheckedCreateInput>
        data,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB>(
      action: 'createOneVideoDB',
      result: result,
      factory: (e) => _i2.VideoDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.VideoDBCreateManyInput,
            Iterable<_i3.VideoDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyVideoDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyVideoDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.VideoDBCreateManyInput,
            Iterable<_i3.VideoDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyVideoDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyVideoDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyVideoDBAndReturnOutputType>>(
      action: 'createManyVideoDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyVideoDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.VideoDB?> update({
    required _i1
        .PrismaUnion<_i3.VideoDBUpdateInput, _i3.VideoDBUncheckedUpdateInput>
        data,
    required _i3.VideoDBWhereUniqueInput where,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB?>(
      action: 'updateOneVideoDB',
      result: result,
      factory: (e) => e != null ? _i2.VideoDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.VideoDBUpdateManyMutationInput,
            _i3.VideoDBUncheckedUpdateManyInput>
        data,
    _i3.VideoDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyVideoDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VideoDB> upsert({
    required _i3.VideoDBWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.VideoDBCreateInput, _i3.VideoDBUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.VideoDBUpdateInput, _i3.VideoDBUncheckedUpdateInput>
        update,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB>(
      action: 'upsertOneVideoDB',
      result: result,
      factory: (e) => _i2.VideoDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VideoDB?> delete({
    required _i3.VideoDBWhereUniqueInput where,
    _i3.VideoDBSelect? select,
    _i3.VideoDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VideoDB?>(
      action: 'deleteOneVideoDB',
      result: result,
      factory: (e) => e != null ? _i2.VideoDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.VideoDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyVideoDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.VideoDBGroupByOutputType>> groupBy({
    _i3.VideoDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.VideoDBOrderByWithAggregationInput>,
            _i3.VideoDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.VideoDBScalar>, _i3.VideoDBScalar> by,
    _i3.VideoDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.VideoDBGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.VideoDBGroupByOutputType>>(
      action: 'groupByVideoDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.VideoDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateVideoDB> aggregate({
    _i3.VideoDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.VideoDBOrderByWithRelationInput>,
            _i3.VideoDBOrderByWithRelationInput>?
        orderBy,
    _i3.VideoDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateVideoDBSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VideoDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateVideoDB>(
      action: 'aggregateVideoDB',
      result: result,
      factory: (e) => _i3.AggregateVideoDB.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'UploadingSession',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid(4)',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'authorId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expiresAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'filePath',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'fileSize',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'FileDB',
        'dbName': 'File',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid(4)',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'authorId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'contentType',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'size',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'url',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'originalImage',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'OriginalImageFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'thumbnailImage',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'ThumbnailImageFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'smallImage',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'SmallImageFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'mediumImage',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'MediumImageFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'largeImage',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'LargeImageFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'video',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'VideoDB',
            'relationName': 'VideoFile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ImageDB',
        'dbName': 'Image',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid(4)',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'original',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'OriginalImageFile',
            'relationFromFields': ['originalId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'thumbnail',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'ThumbnailImageFile',
            'relationFromFields': ['thumbnailId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'small',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'SmallImageFile',
            'relationFromFields': ['smallId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'medium',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'MediumImageFile',
            'relationFromFields': ['mediumId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'large',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'LargeImageFile',
            'relationFromFields': ['largeId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'originalId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'thumbnailId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'smallId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'mediumId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'largeId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'video',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'VideoDB',
            'relationName': 'PreviewImage',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'VideoDB',
        'dbName': 'Video',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid(4)',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'file',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'FileDB',
            'relationName': 'VideoFile',
            'relationFromFields': ['fileId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'preview',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ImageDB',
            'relationName': 'PreviewImage',
            'relationFromFields': ['previewId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'fileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'previewId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'UploadingSession',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'FileDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'originalId'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'thumbnailId'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'smallId'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'mediumId'}
        ],
      },
      {
        'model': 'ImageDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'largeId'}
        ],
      },
      {
        'model': 'VideoDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'VideoDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'fileId'}
        ],
      },
      {
        'model': 'VideoDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'previewId'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  output   = "../lib/generated/prisma_client"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("STORAGE_DATABASE_URL")\n}\n\nmodel UploadingSession {\n  id        String   @id @default(uuid())\n  authorId  String\n  createdAt DateTime @default(now())\n  expiresAt DateTime\n  filePath  String\n  fileSize  Int\n}\n\nmodel FileDB {\n  id          String   @id @default(uuid())\n  authorId    String\n  name        String\n  contentType String\n  size        Int\n  url         String\n  createdAt   DateTime @default(now())\n  updatedAt   DateTime @updatedAt\n\n  originalImage  ImageDB? @relation("OriginalImageFile")\n  thumbnailImage ImageDB? @relation("ThumbnailImageFile")\n  smallImage     ImageDB? @relation("SmallImageFile")\n  mediumImage    ImageDB? @relation("MediumImageFile")\n  largeImage     ImageDB? @relation("LargeImageFile")\n\n  video VideoDB? @relation("VideoFile")\n\n  @@map("File")\n}\n\nmodel ImageDB {\n  id        String   @id @default(uuid())\n  original  FileDB   @relation("OriginalImageFile", fields: [originalId], references: [id])\n  thumbnail FileDB   @relation("ThumbnailImageFile", fields: [thumbnailId], references: [id])\n  small     FileDB   @relation("SmallImageFile", fields: [smallId], references: [id])\n  medium    FileDB   @relation("MediumImageFile", fields: [mediumId], references: [id])\n  large     FileDB   @relation("LargeImageFile", fields: [largeId], references: [id])\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  originalId  String @unique\n  thumbnailId String @unique\n  smallId     String @unique\n  mediumId    String @unique\n  largeId     String @unique\n\n  video VideoDB? @relation("PreviewImage")\n\n  @@map("Image")\n}\n\nmodel VideoDB {\n  id        String   @id @default(uuid())\n  file      FileDB   @relation("VideoFile", fields: [fileId], references: [id])\n  preview   ImageDB  @relation("PreviewImage", fields: [previewId], references: [id])\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  fileId    String @unique\n  previewId String @unique\n\n  @@map("Video")\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'STORAGE_DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  UploadingSessionDelegate get uploadingSession =>
      UploadingSessionDelegate._(this);

  FileDBDelegate get fileDB => FileDBDelegate._(this);

  ImageDBDelegate get imageDB => ImageDBDelegate._(this);

  VideoDBDelegate get videoDB => VideoDBDelegate._(this);
}
