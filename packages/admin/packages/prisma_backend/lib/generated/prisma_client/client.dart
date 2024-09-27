// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class AdminAccountDBDelegate {
  const AdminAccountDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.AdminAccountDB?> findUnique({
    required _i3.AdminAccountDBWhereUniqueInput where,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB?>(
      action: 'findUniqueAdminAccountDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminAccountDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB> findUniqueOrThrow({
    required _i3.AdminAccountDBWhereUniqueInput where,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB>(
      action: 'findUniqueAdminAccountDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminAccountDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB?> findFirst({
    _i3.AdminAccountDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminAccountDBOrderByWithRelationInput>,
            _i3.AdminAccountDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminAccountDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminAccountDBScalar,
            Iterable<_i3.AdminAccountDBScalar>>?
        distinct,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB?>(
      action: 'findFirstAdminAccountDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminAccountDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB> findFirstOrThrow({
    _i3.AdminAccountDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminAccountDBOrderByWithRelationInput>,
            _i3.AdminAccountDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminAccountDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminAccountDBScalar,
            Iterable<_i3.AdminAccountDBScalar>>?
        distinct,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB>(
      action: 'findFirstAdminAccountDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminAccountDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.AdminAccountDB>> findMany({
    _i3.AdminAccountDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminAccountDBOrderByWithRelationInput>,
            _i3.AdminAccountDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminAccountDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminAccountDBScalar,
            Iterable<_i3.AdminAccountDBScalar>>?
        distinct,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.AdminAccountDB>>(
      action: 'findManyAdminAccountDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.AdminAccountDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB> create({
    required _i1.PrismaUnion<_i3.AdminAccountDBCreateInput,
            _i3.AdminAccountDBUncheckedCreateInput>
        data,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB>(
      action: 'createOneAdminAccountDB',
      result: result,
      factory: (e) => _i2.AdminAccountDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.AdminAccountDBCreateManyInput,
            Iterable<_i3.AdminAccountDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAdminAccountDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyAdminAccountDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.AdminAccountDBCreateManyInput,
            Iterable<_i3.AdminAccountDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyAdminAccountDBAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyAdminAccountDBAndReturnOutputType>>(
      action: 'createManyAdminAccountDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyAdminAccountDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB?> update({
    required _i1.PrismaUnion<_i3.AdminAccountDBUpdateInput,
            _i3.AdminAccountDBUncheckedUpdateInput>
        data,
    required _i3.AdminAccountDBWhereUniqueInput where,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB?>(
      action: 'updateOneAdminAccountDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminAccountDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AdminAccountDBUpdateManyMutationInput,
            _i3.AdminAccountDBUncheckedUpdateManyInput>
        data,
    _i3.AdminAccountDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAdminAccountDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB> upsert({
    required _i3.AdminAccountDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.AdminAccountDBCreateInput,
            _i3.AdminAccountDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.AdminAccountDBUpdateInput,
            _i3.AdminAccountDBUncheckedUpdateInput>
        update,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB>(
      action: 'upsertOneAdminAccountDB',
      result: result,
      factory: (e) => _i2.AdminAccountDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminAccountDB?> delete({
    required _i3.AdminAccountDBWhereUniqueInput where,
    _i3.AdminAccountDBSelect? select,
    _i3.AdminAccountDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminAccountDB?>(
      action: 'deleteOneAdminAccountDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminAccountDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AdminAccountDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAdminAccountDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AdminAccountDBGroupByOutputType>> groupBy({
    _i3.AdminAccountDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminAccountDBOrderByWithAggregationInput>,
            _i3.AdminAccountDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AdminAccountDBScalar>,
            _i3.AdminAccountDBScalar>
        by,
    _i3.AdminAccountDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AdminAccountDBGroupByOutputTypeSelect? select,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AdminAccountDBGroupByOutputType>>(
      action: 'groupByAdminAccountDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AdminAccountDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAdminAccountDB> aggregate({
    _i3.AdminAccountDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminAccountDBOrderByWithRelationInput>,
            _i3.AdminAccountDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminAccountDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAdminAccountDBSelect? select,
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
      modelName: 'AdminAccountDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAdminAccountDB>(
      action: 'aggregateAdminAccountDB',
      result: result,
      factory: (e) => _i3.AggregateAdminAccountDB.fromJson(e),
    );
  }
}

class AdminProfileDBDelegate {
  const AdminProfileDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.AdminProfileDB?> findUnique({
    required _i3.AdminProfileDBWhereUniqueInput where,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB?>(
      action: 'findUniqueAdminProfileDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminProfileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB> findUniqueOrThrow({
    required _i3.AdminProfileDBWhereUniqueInput where,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB>(
      action: 'findUniqueAdminProfileDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminProfileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB?> findFirst({
    _i3.AdminProfileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminProfileDBOrderByWithRelationInput>,
            _i3.AdminProfileDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminProfileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminProfileDBScalar,
            Iterable<_i3.AdminProfileDBScalar>>?
        distinct,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB?>(
      action: 'findFirstAdminProfileDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminProfileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB> findFirstOrThrow({
    _i3.AdminProfileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminProfileDBOrderByWithRelationInput>,
            _i3.AdminProfileDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminProfileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminProfileDBScalar,
            Iterable<_i3.AdminProfileDBScalar>>?
        distinct,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB>(
      action: 'findFirstAdminProfileDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminProfileDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.AdminProfileDB>> findMany({
    _i3.AdminProfileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminProfileDBOrderByWithRelationInput>,
            _i3.AdminProfileDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminProfileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminProfileDBScalar,
            Iterable<_i3.AdminProfileDBScalar>>?
        distinct,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.AdminProfileDB>>(
      action: 'findManyAdminProfileDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.AdminProfileDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB> create({
    required _i1.PrismaUnion<_i3.AdminProfileDBCreateInput,
            _i3.AdminProfileDBUncheckedCreateInput>
        data,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB>(
      action: 'createOneAdminProfileDB',
      result: result,
      factory: (e) => _i2.AdminProfileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.AdminProfileDBCreateManyInput,
            Iterable<_i3.AdminProfileDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAdminProfileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyAdminProfileDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.AdminProfileDBCreateManyInput,
            Iterable<_i3.AdminProfileDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyAdminProfileDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyAdminProfileDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyAdminProfileDBAndReturnOutputType>>(
      action: 'createManyAdminProfileDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyAdminProfileDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB?> update({
    required _i1.PrismaUnion<_i3.AdminProfileDBUpdateInput,
            _i3.AdminProfileDBUncheckedUpdateInput>
        data,
    required _i3.AdminProfileDBWhereUniqueInput where,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB?>(
      action: 'updateOneAdminProfileDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminProfileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AdminProfileDBUpdateManyMutationInput,
            _i3.AdminProfileDBUncheckedUpdateManyInput>
        data,
    _i3.AdminProfileDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAdminProfileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB> upsert({
    required _i3.AdminProfileDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.AdminProfileDBCreateInput,
            _i3.AdminProfileDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.AdminProfileDBUpdateInput,
            _i3.AdminProfileDBUncheckedUpdateInput>
        update,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB>(
      action: 'upsertOneAdminProfileDB',
      result: result,
      factory: (e) => _i2.AdminProfileDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminProfileDB?> delete({
    required _i3.AdminProfileDBWhereUniqueInput where,
    _i3.AdminProfileDBSelect? select,
    _i3.AdminProfileDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminProfileDB?>(
      action: 'deleteOneAdminProfileDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminProfileDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AdminProfileDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAdminProfileDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AdminProfileDBGroupByOutputType>> groupBy({
    _i3.AdminProfileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminProfileDBOrderByWithAggregationInput>,
            _i3.AdminProfileDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AdminProfileDBScalar>,
            _i3.AdminProfileDBScalar>
        by,
    _i3.AdminProfileDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AdminProfileDBGroupByOutputTypeSelect? select,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AdminProfileDBGroupByOutputType>>(
      action: 'groupByAdminProfileDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AdminProfileDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAdminProfileDB> aggregate({
    _i3.AdminProfileDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminProfileDBOrderByWithRelationInput>,
            _i3.AdminProfileDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminProfileDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAdminProfileDBSelect? select,
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
      modelName: 'AdminProfileDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAdminProfileDB>(
      action: 'aggregateAdminProfileDB',
      result: result,
      factory: (e) => _i3.AggregateAdminProfileDB.fromJson(e),
    );
  }
}

class AdminSessionDBDelegate {
  const AdminSessionDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.AdminSessionDB?> findUnique({
    required _i3.AdminSessionDBWhereUniqueInput where,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB?>(
      action: 'findUniqueAdminSessionDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminSessionDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB> findUniqueOrThrow({
    required _i3.AdminSessionDBWhereUniqueInput where,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB>(
      action: 'findUniqueAdminSessionDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminSessionDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB?> findFirst({
    _i3.AdminSessionDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminSessionDBOrderByWithRelationInput>,
            _i3.AdminSessionDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminSessionDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminSessionDBScalar,
            Iterable<_i3.AdminSessionDBScalar>>?
        distinct,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB?>(
      action: 'findFirstAdminSessionDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminSessionDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB> findFirstOrThrow({
    _i3.AdminSessionDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminSessionDBOrderByWithRelationInput>,
            _i3.AdminSessionDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminSessionDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminSessionDBScalar,
            Iterable<_i3.AdminSessionDBScalar>>?
        distinct,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB>(
      action: 'findFirstAdminSessionDBOrThrow',
      result: result,
      factory: (e) => _i2.AdminSessionDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.AdminSessionDB>> findMany({
    _i3.AdminSessionDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminSessionDBOrderByWithRelationInput>,
            _i3.AdminSessionDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminSessionDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AdminSessionDBScalar,
            Iterable<_i3.AdminSessionDBScalar>>?
        distinct,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.AdminSessionDB>>(
      action: 'findManyAdminSessionDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.AdminSessionDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB> create({
    required _i1.PrismaUnion<_i3.AdminSessionDBCreateInput,
            _i3.AdminSessionDBUncheckedCreateInput>
        data,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB>(
      action: 'createOneAdminSessionDB',
      result: result,
      factory: (e) => _i2.AdminSessionDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.AdminSessionDBCreateManyInput,
            Iterable<_i3.AdminSessionDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAdminSessionDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyAdminSessionDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.AdminSessionDBCreateManyInput,
            Iterable<_i3.AdminSessionDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyAdminSessionDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyAdminSessionDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyAdminSessionDBAndReturnOutputType>>(
      action: 'createManyAdminSessionDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyAdminSessionDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB?> update({
    required _i1.PrismaUnion<_i3.AdminSessionDBUpdateInput,
            _i3.AdminSessionDBUncheckedUpdateInput>
        data,
    required _i3.AdminSessionDBWhereUniqueInput where,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB?>(
      action: 'updateOneAdminSessionDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminSessionDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AdminSessionDBUpdateManyMutationInput,
            _i3.AdminSessionDBUncheckedUpdateManyInput>
        data,
    _i3.AdminSessionDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAdminSessionDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB> upsert({
    required _i3.AdminSessionDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.AdminSessionDBCreateInput,
            _i3.AdminSessionDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.AdminSessionDBUpdateInput,
            _i3.AdminSessionDBUncheckedUpdateInput>
        update,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB>(
      action: 'upsertOneAdminSessionDB',
      result: result,
      factory: (e) => _i2.AdminSessionDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.AdminSessionDB?> delete({
    required _i3.AdminSessionDBWhereUniqueInput where,
    _i3.AdminSessionDBSelect? select,
    _i3.AdminSessionDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.AdminSessionDB?>(
      action: 'deleteOneAdminSessionDB',
      result: result,
      factory: (e) => e != null ? _i2.AdminSessionDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AdminSessionDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAdminSessionDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AdminSessionDBGroupByOutputType>> groupBy({
    _i3.AdminSessionDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminSessionDBOrderByWithAggregationInput>,
            _i3.AdminSessionDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AdminSessionDBScalar>,
            _i3.AdminSessionDBScalar>
        by,
    _i3.AdminSessionDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AdminSessionDBGroupByOutputTypeSelect? select,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AdminSessionDBGroupByOutputType>>(
      action: 'groupByAdminSessionDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AdminSessionDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAdminSessionDB> aggregate({
    _i3.AdminSessionDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AdminSessionDBOrderByWithRelationInput>,
            _i3.AdminSessionDBOrderByWithRelationInput>?
        orderBy,
    _i3.AdminSessionDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAdminSessionDBSelect? select,
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
      modelName: 'AdminSessionDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAdminSessionDB>(
      action: 'aggregateAdminSessionDB',
      result: result,
      factory: (e) => _i3.AggregateAdminSessionDB.fromJson(e),
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
    'enums': [
      {
        'name': 'PermissionsDB',
        'values': [
          {
            'name': 'daily',
            'dbName': null,
          },
          {
            'name': 'posts',
            'dbName': null,
          },
          {
            'name': 'users',
            'dbName': null,
          },
          {
            'name': 'adminAccounts',
            'dbName': null,
          },
        ],
        'dbName': 'Permissions',
      }
    ],
    'models': [
      {
        'name': 'AdminAccountDB',
        'dbName': 'AdminAccount',
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
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'totp',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'permissions',
            'kind': 'enum',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PermissionsDB',
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
            'name': 'AdminProfileDB',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'AdminProfileDB',
            'relationName': 'AdminAccountDBToAdminProfileDB',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'AdminSessionDB',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'AdminSessionDB',
            'relationName': 'AdminAccountDBToAdminSessionDB',
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
        'name': 'AdminProfileDB',
        'dbName': 'AdminProfile',
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
            'name': 'accountId',
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
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
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
            'name': 'account',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'AdminAccountDB',
            'relationName': 'AdminAccountDBToAdminProfileDB',
            'relationFromFields': ['accountId'],
            'relationToFields': ['id'],
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
        'name': 'AdminSessionDB',
        'dbName': 'AdminSession',
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
            'name': 'accountId',
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
            'name': 'token',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expires',
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
            'name': 'account',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'AdminAccountDB',
            'relationName': 'AdminAccountDBToAdminSessionDB',
            'relationFromFields': ['accountId'],
            'relationToFields': ['id'],
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
        'model': 'AdminAccountDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'AdminAccountDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'email'}
        ],
      },
      {
        'model': 'AdminAccountDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'totp'}
        ],
      },
      {
        'model': 'AdminProfileDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'AdminProfileDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'accountId'}
        ],
      },
      {
        'model': 'AdminProfileDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'name'}
        ],
      },
      {
        'model': 'AdminSessionDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'AdminSessionDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'accountId'}
        ],
      },
      {
        'model': 'AdminSessionDB',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'token'}
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
            'generator client {\n  provider = "dart run orm"\n  output   = "../lib/generated/prisma_client"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("ADMIN_DATABASE_URL")\n}\n\nmodel AdminAccountDB {\n  id             String          @id @default(uuid())\n  email          String          @unique\n  totp           String          @unique\n  permissions    PermissionsDB[]\n  createdAt      DateTime        @default(now())\n  updatedAt      DateTime        @updatedAt\n  AdminProfileDB AdminProfileDB?\n  AdminSessionDB AdminSessionDB?\n\n  @@map("AdminAccount")\n}\n\nmodel AdminProfileDB {\n  id        String         @id @default(uuid())\n  accountId String         @unique\n  name      String         @unique\n  createdAt DateTime       @default(now())\n  updatedAt DateTime       @updatedAt\n  account   AdminAccountDB @relation(fields: [accountId], references: [id])\n\n  @@map("AdminProfile")\n}\n\nmodel AdminSessionDB {\n  id        String         @id @default(uuid())\n  accountId String         @unique\n  token     String         @unique\n  expires   DateTime\n  createdAt DateTime       @default(now())\n  account   AdminAccountDB @relation(fields: [accountId], references: [id])\n\n  @@map("AdminSession")\n}\n\nenum PermissionsDB {\n  daily\n  posts\n  users\n  adminAccounts\n\n  @@map("Permissions")\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'ADMIN_DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  AdminAccountDBDelegate get adminAccountDB => AdminAccountDBDelegate._(this);

  AdminProfileDBDelegate get adminProfileDB => AdminProfileDBDelegate._(this);

  AdminSessionDBDelegate get adminSessionDB => AdminSessionDBDelegate._(this);
}
