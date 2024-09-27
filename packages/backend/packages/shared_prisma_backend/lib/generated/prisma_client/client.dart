// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class CategoryDBDelegate {
  const CategoryDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.CategoryDB?> findUnique({
    required _i3.CategoryDBWhereUniqueInput where,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB?>(
      action: 'findUniqueCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.CategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CategoryDB> findUniqueOrThrow({
    required _i3.CategoryDBWhereUniqueInput where,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB>(
      action: 'findUniqueCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.CategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CategoryDB?> findFirst({
    _i3.CategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryDBOrderByWithRelationInput>,
            _i3.CategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryDBScalar, Iterable<_i3.CategoryDBScalar>>?
        distinct,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB?>(
      action: 'findFirstCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.CategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CategoryDB> findFirstOrThrow({
    _i3.CategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryDBOrderByWithRelationInput>,
            _i3.CategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryDBScalar, Iterable<_i3.CategoryDBScalar>>?
        distinct,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB>(
      action: 'findFirstCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.CategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CategoryDB>> findMany({
    _i3.CategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryDBOrderByWithRelationInput>,
            _i3.CategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryDBScalar, Iterable<_i3.CategoryDBScalar>>?
        distinct,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CategoryDB>>(
      action: 'findManyCategoryDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.CategoryDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.CategoryDB> create({
    required _i1.PrismaUnion<_i3.CategoryDBCreateInput,
            _i3.CategoryDBUncheckedCreateInput>
        data,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB>(
      action: 'createOneCategoryDB',
      result: result,
      factory: (e) => _i2.CategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.CategoryDBCreateManyInput,
            Iterable<_i3.CategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyCategoryDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.CategoryDBCreateManyInput,
            Iterable<_i3.CategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyCategoryDBAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyCategoryDBAndReturnOutputType>>(
      action: 'createManyCategoryDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyCategoryDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.CategoryDB?> update({
    required _i1.PrismaUnion<_i3.CategoryDBUpdateInput,
            _i3.CategoryDBUncheckedUpdateInput>
        data,
    required _i3.CategoryDBWhereUniqueInput where,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB?>(
      action: 'updateOneCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.CategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CategoryDBUpdateManyMutationInput,
            _i3.CategoryDBUncheckedUpdateManyInput>
        data,
    _i3.CategoryDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CategoryDB> upsert({
    required _i3.CategoryDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.CategoryDBCreateInput,
            _i3.CategoryDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.CategoryDBUpdateInput,
            _i3.CategoryDBUncheckedUpdateInput>
        update,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB>(
      action: 'upsertOneCategoryDB',
      result: result,
      factory: (e) => _i2.CategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CategoryDB?> delete({
    required _i3.CategoryDBWhereUniqueInput where,
    _i3.CategoryDBSelect? select,
    _i3.CategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CategoryDB?>(
      action: 'deleteOneCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.CategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.CategoryDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CategoryDBGroupByOutputType>> groupBy({
    _i3.CategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryDBOrderByWithAggregationInput>,
            _i3.CategoryDBOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.CategoryDBScalar>, _i3.CategoryDBScalar>
        by,
    _i3.CategoryDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CategoryDBGroupByOutputTypeSelect? select,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CategoryDBGroupByOutputType>>(
      action: 'groupByCategoryDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CategoryDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateCategoryDB> aggregate({
    _i3.CategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryDBOrderByWithRelationInput>,
            _i3.CategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCategoryDBSelect? select,
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
      modelName: 'CategoryDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCategoryDB>(
      action: 'aggregateCategoryDB',
      result: result,
      factory: (e) => _i3.AggregateCategoryDB.fromJson(e),
    );
  }
}

class DailyLinkDBDelegate {
  const DailyLinkDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.DailyLinkDB?> findUnique({
    required _i3.DailyLinkDBWhereUniqueInput where,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB?>(
      action: 'findUniqueDailyLinkDB',
      result: result,
      factory: (e) => e != null ? _i2.DailyLinkDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB> findUniqueOrThrow({
    required _i3.DailyLinkDBWhereUniqueInput where,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB>(
      action: 'findUniqueDailyLinkDBOrThrow',
      result: result,
      factory: (e) => _i2.DailyLinkDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB?> findFirst({
    _i3.DailyLinkDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DailyLinkDBOrderByWithRelationInput>,
            _i3.DailyLinkDBOrderByWithRelationInput>?
        orderBy,
    _i3.DailyLinkDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DailyLinkDBScalar, Iterable<_i3.DailyLinkDBScalar>>?
        distinct,
    _i3.DailyLinkDBSelect? select,
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
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB?>(
      action: 'findFirstDailyLinkDB',
      result: result,
      factory: (e) => e != null ? _i2.DailyLinkDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB> findFirstOrThrow({
    _i3.DailyLinkDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DailyLinkDBOrderByWithRelationInput>,
            _i3.DailyLinkDBOrderByWithRelationInput>?
        orderBy,
    _i3.DailyLinkDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DailyLinkDBScalar, Iterable<_i3.DailyLinkDBScalar>>?
        distinct,
    _i3.DailyLinkDBSelect? select,
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
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB>(
      action: 'findFirstDailyLinkDBOrThrow',
      result: result,
      factory: (e) => _i2.DailyLinkDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.DailyLinkDB>> findMany({
    _i3.DailyLinkDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DailyLinkDBOrderByWithRelationInput>,
            _i3.DailyLinkDBOrderByWithRelationInput>?
        orderBy,
    _i3.DailyLinkDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DailyLinkDBScalar, Iterable<_i3.DailyLinkDBScalar>>?
        distinct,
    _i3.DailyLinkDBSelect? select,
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
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.DailyLinkDB>>(
      action: 'findManyDailyLinkDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.DailyLinkDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB> create({
    required _i1.PrismaUnion<_i3.DailyLinkDBCreateInput,
            _i3.DailyLinkDBUncheckedCreateInput>
        data,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB>(
      action: 'createOneDailyLinkDB',
      result: result,
      factory: (e) => _i2.DailyLinkDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.DailyLinkDBCreateManyInput,
            Iterable<_i3.DailyLinkDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyDailyLinkDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyDailyLinkDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.DailyLinkDBCreateManyInput,
            Iterable<_i3.DailyLinkDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyDailyLinkDBAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyDailyLinkDBAndReturnOutputType>>(
      action: 'createManyDailyLinkDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyDailyLinkDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB?> update({
    required _i1.PrismaUnion<_i3.DailyLinkDBUpdateInput,
            _i3.DailyLinkDBUncheckedUpdateInput>
        data,
    required _i3.DailyLinkDBWhereUniqueInput where,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB?>(
      action: 'updateOneDailyLinkDB',
      result: result,
      factory: (e) => e != null ? _i2.DailyLinkDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.DailyLinkDBUpdateManyMutationInput,
            _i3.DailyLinkDBUncheckedUpdateManyInput>
        data,
    _i3.DailyLinkDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyDailyLinkDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB> upsert({
    required _i3.DailyLinkDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.DailyLinkDBCreateInput,
            _i3.DailyLinkDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.DailyLinkDBUpdateInput,
            _i3.DailyLinkDBUncheckedUpdateInput>
        update,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB>(
      action: 'upsertOneDailyLinkDB',
      result: result,
      factory: (e) => _i2.DailyLinkDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DailyLinkDB?> delete({
    required _i3.DailyLinkDBWhereUniqueInput where,
    _i3.DailyLinkDBSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DailyLinkDB?>(
      action: 'deleteOneDailyLinkDB',
      result: result,
      factory: (e) => e != null ? _i2.DailyLinkDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.DailyLinkDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyDailyLinkDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.DailyLinkDBGroupByOutputType>> groupBy({
    _i3.DailyLinkDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DailyLinkDBOrderByWithAggregationInput>,
            _i3.DailyLinkDBOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.DailyLinkDBScalar>, _i3.DailyLinkDBScalar>
        by,
    _i3.DailyLinkDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.DailyLinkDBGroupByOutputTypeSelect? select,
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
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.DailyLinkDBGroupByOutputType>>(
      action: 'groupByDailyLinkDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.DailyLinkDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateDailyLinkDB> aggregate({
    _i3.DailyLinkDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DailyLinkDBOrderByWithRelationInput>,
            _i3.DailyLinkDBOrderByWithRelationInput>?
        orderBy,
    _i3.DailyLinkDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateDailyLinkDBSelect? select,
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
      modelName: 'DailyLinkDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateDailyLinkDB>(
      action: 'aggregateDailyLinkDB',
      result: result,
      factory: (e) => _i3.AggregateDailyLinkDB.fromJson(e),
    );
  }
}

class BrandingProjectDBDelegate {
  const BrandingProjectDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.BrandingProjectDB?> findUnique({
    required _i3.BrandingProjectDBWhereUniqueInput where,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB?>(
      action: 'findUniqueBrandingProjectDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingProjectDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB> findUniqueOrThrow({
    required _i3.BrandingProjectDBWhereUniqueInput where,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB>(
      action: 'findUniqueBrandingProjectDBOrThrow',
      result: result,
      factory: (e) => _i2.BrandingProjectDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB?> findFirst({
    _i3.BrandingProjectDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBOrderByWithRelationInput>,
            _i3.BrandingProjectDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingProjectDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingProjectDBScalar,
            Iterable<_i3.BrandingProjectDBScalar>>?
        distinct,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB?>(
      action: 'findFirstBrandingProjectDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingProjectDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB> findFirstOrThrow({
    _i3.BrandingProjectDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBOrderByWithRelationInput>,
            _i3.BrandingProjectDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingProjectDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingProjectDBScalar,
            Iterable<_i3.BrandingProjectDBScalar>>?
        distinct,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB>(
      action: 'findFirstBrandingProjectDBOrThrow',
      result: result,
      factory: (e) => _i2.BrandingProjectDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.BrandingProjectDB>> findMany({
    _i3.BrandingProjectDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBOrderByWithRelationInput>,
            _i3.BrandingProjectDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingProjectDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingProjectDBScalar,
            Iterable<_i3.BrandingProjectDBScalar>>?
        distinct,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.BrandingProjectDB>>(
      action: 'findManyBrandingProjectDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.BrandingProjectDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB> create({
    required _i1.PrismaUnion<_i3.BrandingProjectDBCreateInput,
            _i3.BrandingProjectDBUncheckedCreateInput>
        data,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB>(
      action: 'createOneBrandingProjectDB',
      result: result,
      factory: (e) => _i2.BrandingProjectDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.BrandingProjectDBCreateManyInput,
            Iterable<_i3.BrandingProjectDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyBrandingProjectDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyBrandingProjectDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.BrandingProjectDBCreateManyInput,
            Iterable<_i3.BrandingProjectDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyBrandingProjectDBAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyBrandingProjectDBAndReturnOutputType>>(
      action: 'createManyBrandingProjectDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map((e) =>
          _i2.CreateManyBrandingProjectDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB?> update({
    required _i1.PrismaUnion<_i3.BrandingProjectDBUpdateInput,
            _i3.BrandingProjectDBUncheckedUpdateInput>
        data,
    required _i3.BrandingProjectDBWhereUniqueInput where,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB?>(
      action: 'updateOneBrandingProjectDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingProjectDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.BrandingProjectDBUpdateManyMutationInput,
            _i3.BrandingProjectDBUncheckedUpdateManyInput>
        data,
    _i3.BrandingProjectDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyBrandingProjectDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB> upsert({
    required _i3.BrandingProjectDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.BrandingProjectDBCreateInput,
            _i3.BrandingProjectDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.BrandingProjectDBUpdateInput,
            _i3.BrandingProjectDBUncheckedUpdateInput>
        update,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB>(
      action: 'upsertOneBrandingProjectDB',
      result: result,
      factory: (e) => _i2.BrandingProjectDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingProjectDB?> delete({
    required _i3.BrandingProjectDBWhereUniqueInput where,
    _i3.BrandingProjectDBSelect? select,
    _i3.BrandingProjectDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingProjectDB?>(
      action: 'deleteOneBrandingProjectDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingProjectDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.BrandingProjectDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyBrandingProjectDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.BrandingProjectDBGroupByOutputType>> groupBy({
    _i3.BrandingProjectDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBOrderByWithAggregationInput>,
            _i3.BrandingProjectDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBScalar>,
            _i3.BrandingProjectDBScalar>
        by,
    _i3.BrandingProjectDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.BrandingProjectDBGroupByOutputTypeSelect? select,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.BrandingProjectDBGroupByOutputType>>(
      action: 'groupByBrandingProjectDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.BrandingProjectDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateBrandingProjectDB> aggregate({
    _i3.BrandingProjectDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingProjectDBOrderByWithRelationInput>,
            _i3.BrandingProjectDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingProjectDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateBrandingProjectDBSelect? select,
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
      modelName: 'BrandingProjectDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateBrandingProjectDB>(
      action: 'aggregateBrandingProjectDB',
      result: result,
      factory: (e) => _i3.AggregateBrandingProjectDB.fromJson(e),
    );
  }
}

class BrandingPostDBDelegate {
  const BrandingPostDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.BrandingPostDB?> findUnique({
    required _i3.BrandingPostDBWhereUniqueInput where,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB?>(
      action: 'findUniqueBrandingPostDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingPostDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB> findUniqueOrThrow({
    required _i3.BrandingPostDBWhereUniqueInput where,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB>(
      action: 'findUniqueBrandingPostDBOrThrow',
      result: result,
      factory: (e) => _i2.BrandingPostDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB?> findFirst({
    _i3.BrandingPostDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingPostDBOrderByWithRelationInput>,
            _i3.BrandingPostDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingPostDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingPostDBScalar,
            Iterable<_i3.BrandingPostDBScalar>>?
        distinct,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB?>(
      action: 'findFirstBrandingPostDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingPostDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB> findFirstOrThrow({
    _i3.BrandingPostDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingPostDBOrderByWithRelationInput>,
            _i3.BrandingPostDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingPostDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingPostDBScalar,
            Iterable<_i3.BrandingPostDBScalar>>?
        distinct,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB>(
      action: 'findFirstBrandingPostDBOrThrow',
      result: result,
      factory: (e) => _i2.BrandingPostDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.BrandingPostDB>> findMany({
    _i3.BrandingPostDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingPostDBOrderByWithRelationInput>,
            _i3.BrandingPostDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingPostDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.BrandingPostDBScalar,
            Iterable<_i3.BrandingPostDBScalar>>?
        distinct,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.BrandingPostDB>>(
      action: 'findManyBrandingPostDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.BrandingPostDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB> create({
    required _i1.PrismaUnion<_i3.BrandingPostDBCreateInput,
            _i3.BrandingPostDBUncheckedCreateInput>
        data,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB>(
      action: 'createOneBrandingPostDB',
      result: result,
      factory: (e) => _i2.BrandingPostDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.BrandingPostDBCreateManyInput,
            Iterable<_i3.BrandingPostDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyBrandingPostDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyBrandingPostDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.BrandingPostDBCreateManyInput,
            Iterable<_i3.BrandingPostDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyBrandingPostDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyBrandingPostDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyBrandingPostDBAndReturnOutputType>>(
      action: 'createManyBrandingPostDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyBrandingPostDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB?> update({
    required _i1.PrismaUnion<_i3.BrandingPostDBUpdateInput,
            _i3.BrandingPostDBUncheckedUpdateInput>
        data,
    required _i3.BrandingPostDBWhereUniqueInput where,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB?>(
      action: 'updateOneBrandingPostDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingPostDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.BrandingPostDBUpdateManyMutationInput,
            _i3.BrandingPostDBUncheckedUpdateManyInput>
        data,
    _i3.BrandingPostDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyBrandingPostDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB> upsert({
    required _i3.BrandingPostDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.BrandingPostDBCreateInput,
            _i3.BrandingPostDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.BrandingPostDBUpdateInput,
            _i3.BrandingPostDBUncheckedUpdateInput>
        update,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB>(
      action: 'upsertOneBrandingPostDB',
      result: result,
      factory: (e) => _i2.BrandingPostDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.BrandingPostDB?> delete({
    required _i3.BrandingPostDBWhereUniqueInput where,
    _i3.BrandingPostDBSelect? select,
    _i3.BrandingPostDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.BrandingPostDB?>(
      action: 'deleteOneBrandingPostDB',
      result: result,
      factory: (e) => e != null ? _i2.BrandingPostDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.BrandingPostDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyBrandingPostDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.BrandingPostDBGroupByOutputType>> groupBy({
    _i3.BrandingPostDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingPostDBOrderByWithAggregationInput>,
            _i3.BrandingPostDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.BrandingPostDBScalar>,
            _i3.BrandingPostDBScalar>
        by,
    _i3.BrandingPostDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.BrandingPostDBGroupByOutputTypeSelect? select,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.BrandingPostDBGroupByOutputType>>(
      action: 'groupByBrandingPostDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.BrandingPostDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateBrandingPostDB> aggregate({
    _i3.BrandingPostDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.BrandingPostDBOrderByWithRelationInput>,
            _i3.BrandingPostDBOrderByWithRelationInput>?
        orderBy,
    _i3.BrandingPostDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateBrandingPostDBSelect? select,
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
      modelName: 'BrandingPostDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateBrandingPostDB>(
      action: 'aggregateBrandingPostDB',
      result: result,
      factory: (e) => _i3.AggregateBrandingPostDB.fromJson(e),
    );
  }
}

class PostCategoryDBDelegate {
  const PostCategoryDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PostCategoryDB?> findUnique({
    required _i3.PostCategoryDBWhereUniqueInput where,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB?>(
      action: 'findUniquePostCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.PostCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB> findUniqueOrThrow({
    required _i3.PostCategoryDBWhereUniqueInput where,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB>(
      action: 'findUniquePostCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.PostCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB?> findFirst({
    _i3.PostCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostCategoryDBOrderByWithRelationInput>,
            _i3.PostCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.PostCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostCategoryDBScalar,
            Iterable<_i3.PostCategoryDBScalar>>?
        distinct,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB?>(
      action: 'findFirstPostCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.PostCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB> findFirstOrThrow({
    _i3.PostCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostCategoryDBOrderByWithRelationInput>,
            _i3.PostCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.PostCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostCategoryDBScalar,
            Iterable<_i3.PostCategoryDBScalar>>?
        distinct,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB>(
      action: 'findFirstPostCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.PostCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PostCategoryDB>> findMany({
    _i3.PostCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostCategoryDBOrderByWithRelationInput>,
            _i3.PostCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.PostCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostCategoryDBScalar,
            Iterable<_i3.PostCategoryDBScalar>>?
        distinct,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PostCategoryDB>>(
      action: 'findManyPostCategoryDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PostCategoryDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB> create({
    required _i1.PrismaUnion<_i3.PostCategoryDBCreateInput,
            _i3.PostCategoryDBUncheckedCreateInput>
        data,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB>(
      action: 'createOnePostCategoryDB',
      result: result,
      factory: (e) => _i2.PostCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PostCategoryDBCreateManyInput,
            Iterable<_i3.PostCategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPostCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyPostCategoryDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.PostCategoryDBCreateManyInput,
            Iterable<_i3.PostCategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyPostCategoryDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyPostCategoryDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyPostCategoryDBAndReturnOutputType>>(
      action: 'createManyPostCategoryDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyPostCategoryDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB?> update({
    required _i1.PrismaUnion<_i3.PostCategoryDBUpdateInput,
            _i3.PostCategoryDBUncheckedUpdateInput>
        data,
    required _i3.PostCategoryDBWhereUniqueInput where,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB?>(
      action: 'updateOnePostCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.PostCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PostCategoryDBUpdateManyMutationInput,
            _i3.PostCategoryDBUncheckedUpdateManyInput>
        data,
    _i3.PostCategoryDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPostCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB> upsert({
    required _i3.PostCategoryDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PostCategoryDBCreateInput,
            _i3.PostCategoryDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.PostCategoryDBUpdateInput,
            _i3.PostCategoryDBUncheckedUpdateInput>
        update,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB>(
      action: 'upsertOnePostCategoryDB',
      result: result,
      factory: (e) => _i2.PostCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostCategoryDB?> delete({
    required _i3.PostCategoryDBWhereUniqueInput where,
    _i3.PostCategoryDBSelect? select,
    _i3.PostCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostCategoryDB?>(
      action: 'deleteOnePostCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.PostCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PostCategoryDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPostCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostCategoryDBGroupByOutputType>> groupBy({
    _i3.PostCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostCategoryDBOrderByWithAggregationInput>,
            _i3.PostCategoryDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostCategoryDBScalar>,
            _i3.PostCategoryDBScalar>
        by,
    _i3.PostCategoryDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostCategoryDBGroupByOutputTypeSelect? select,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostCategoryDBGroupByOutputType>>(
      action: 'groupByPostCategoryDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PostCategoryDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePostCategoryDB> aggregate({
    _i3.PostCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostCategoryDBOrderByWithRelationInput>,
            _i3.PostCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.PostCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostCategoryDBSelect? select,
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
      modelName: 'PostCategoryDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePostCategoryDB>(
      action: 'aggregatePostCategoryDB',
      result: result,
      factory: (e) => _i3.AggregatePostCategoryDB.fromJson(e),
    );
  }
}

class ProjectCategoryDBDelegate {
  const ProjectCategoryDBDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ProjectCategoryDB?> findUnique({
    required _i3.ProjectCategoryDBWhereUniqueInput where,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB?>(
      action: 'findUniqueProjectCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.ProjectCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB> findUniqueOrThrow({
    required _i3.ProjectCategoryDBWhereUniqueInput where,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB>(
      action: 'findUniqueProjectCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.ProjectCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB?> findFirst({
    _i3.ProjectCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBOrderByWithRelationInput>,
            _i3.ProjectCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectCategoryDBScalar,
            Iterable<_i3.ProjectCategoryDBScalar>>?
        distinct,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB?>(
      action: 'findFirstProjectCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.ProjectCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB> findFirstOrThrow({
    _i3.ProjectCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBOrderByWithRelationInput>,
            _i3.ProjectCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectCategoryDBScalar,
            Iterable<_i3.ProjectCategoryDBScalar>>?
        distinct,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB>(
      action: 'findFirstProjectCategoryDBOrThrow',
      result: result,
      factory: (e) => _i2.ProjectCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ProjectCategoryDB>> findMany({
    _i3.ProjectCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBOrderByWithRelationInput>,
            _i3.ProjectCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectCategoryDBScalar,
            Iterable<_i3.ProjectCategoryDBScalar>>?
        distinct,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ProjectCategoryDB>>(
      action: 'findManyProjectCategoryDB',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ProjectCategoryDB.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB> create({
    required _i1.PrismaUnion<_i3.ProjectCategoryDBCreateInput,
            _i3.ProjectCategoryDBUncheckedCreateInput>
        data,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB>(
      action: 'createOneProjectCategoryDB',
      result: result,
      factory: (e) => _i2.ProjectCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ProjectCategoryDBCreateManyInput,
            Iterable<_i3.ProjectCategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyProjectCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyProjectCategoryDBAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProjectCategoryDBCreateManyInput,
            Iterable<_i3.ProjectCategoryDBCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyProjectCategoryDBAndReturnOutputTypeSelect? select,
    _i3.CreateManyProjectCategoryDBAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyProjectCategoryDBAndReturnOutputType>>(
      action: 'createManyProjectCategoryDBAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map((e) =>
          _i2.CreateManyProjectCategoryDBAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB?> update({
    required _i1.PrismaUnion<_i3.ProjectCategoryDBUpdateInput,
            _i3.ProjectCategoryDBUncheckedUpdateInput>
        data,
    required _i3.ProjectCategoryDBWhereUniqueInput where,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB?>(
      action: 'updateOneProjectCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.ProjectCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProjectCategoryDBUpdateManyMutationInput,
            _i3.ProjectCategoryDBUncheckedUpdateManyInput>
        data,
    _i3.ProjectCategoryDBWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyProjectCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB> upsert({
    required _i3.ProjectCategoryDBWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.ProjectCategoryDBCreateInput,
            _i3.ProjectCategoryDBUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.ProjectCategoryDBUpdateInput,
            _i3.ProjectCategoryDBUncheckedUpdateInput>
        update,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB>(
      action: 'upsertOneProjectCategoryDB',
      result: result,
      factory: (e) => _i2.ProjectCategoryDB.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectCategoryDB?> delete({
    required _i3.ProjectCategoryDBWhereUniqueInput where,
    _i3.ProjectCategoryDBSelect? select,
    _i3.ProjectCategoryDBInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectCategoryDB?>(
      action: 'deleteOneProjectCategoryDB',
      result: result,
      factory: (e) => e != null ? _i2.ProjectCategoryDB.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProjectCategoryDBWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyProjectCategoryDB',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProjectCategoryDBGroupByOutputType>> groupBy({
    _i3.ProjectCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBOrderByWithAggregationInput>,
            _i3.ProjectCategoryDBOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBScalar>,
            _i3.ProjectCategoryDBScalar>
        by,
    _i3.ProjectCategoryDBScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProjectCategoryDBGroupByOutputTypeSelect? select,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProjectCategoryDBGroupByOutputType>>(
      action: 'groupByProjectCategoryDB',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProjectCategoryDBGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProjectCategoryDB> aggregate({
    _i3.ProjectCategoryDBWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectCategoryDBOrderByWithRelationInput>,
            _i3.ProjectCategoryDBOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectCategoryDBWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProjectCategoryDBSelect? select,
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
      modelName: 'ProjectCategoryDB',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProjectCategoryDB>(
      action: 'aggregateProjectCategoryDB',
      result: result,
      factory: (e) => _i3.AggregateProjectCategoryDB.fromJson(e),
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
        'name': 'DailyLinkTypeDB',
        'values': [
          {
            'name': 'video',
            'dbName': null,
          },
          {
            'name': 'startup',
            'dbName': null,
          },
          {
            'name': 'utility',
            'dbName': null,
          },
          {
            'name': 'site',
            'dbName': null,
          },
          {
            'name': 'article',
            'dbName': null,
          },
          {
            'name': 'cases',
            'dbName': null,
          },
        ],
        'dbName': 'DailyLinkType',
      }
    ],
    'models': [
      {
        'name': 'CategoryDB',
        'dbName': 'Category',
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
            'name': 'key',
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
            'name': 'value',
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
            'name': 'properties',
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
            'name': 'PostCategoryDb',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostCategoryDB',
            'relationName': 'CategoryDBToPostCategoryDB',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'ProjectCategoryDb',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProjectCategoryDB',
            'relationName': 'CategoryDBToProjectCategoryDB',
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
        'name': 'DailyLinkDB',
        'dbName': 'DailyLink',
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
            'name': 'title',
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
            'name': 'previewImageUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'date',
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
            'name': 'type',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DailyLinkTypeDB',
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
        'name': 'BrandingProjectDB',
        'dbName': 'BrandingProject',
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
            'name': 'description',
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
            'name': 'children',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'BrandingPostDB',
            'relationName': 'BrandingPostDBToBrandingProjectDB',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categories',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProjectCategoryDB',
            'relationName': 'BrandingProjectDBToProjectCategoryDB',
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
        'name': 'BrandingPostDB',
        'dbName': 'BrandingPost',
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
            'name': 'parentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
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
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
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
            'name': 'imageUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
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
            'name': 'sortOrder',
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
            'name': 'parent',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'BrandingProjectDB',
            'relationName': 'BrandingPostDBToBrandingProjectDB',
            'relationFromFields': ['parentId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categories',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostCategoryDB',
            'relationName': 'BrandingPostDBToPostCategoryDB',
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
        'name': 'PostCategoryDB',
        'dbName': 'PostCategory',
        'fields': [
          {
            'name': 'BrandingPostDB',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'BrandingPostDB',
            'relationName': 'BrandingPostDBToPostCategoryDB',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'CategoryDB',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'CategoryDB',
            'relationName': 'CategoryDBToPostCategoryDB',
            'relationFromFields': ['categoryId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categoryId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': {
          'name': null,
          'fields': [
            'postId',
            'categoryId',
          ],
        },
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ProjectCategoryDB',
        'dbName': 'ProjectCategory',
        'fields': [
          {
            'name': 'BrandingProjectDB',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'BrandingProjectDB',
            'relationName': 'BrandingProjectDBToProjectCategoryDB',
            'relationFromFields': ['projectId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'projectId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'CategoryDB',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'CategoryDB',
            'relationName': 'CategoryDBToProjectCategoryDB',
            'relationFromFields': ['categoryId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categoryId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': {
          'name': null,
          'fields': [
            'projectId',
            'categoryId',
          ],
        },
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'CategoryDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'DailyLinkDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'BrandingProjectDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'BrandingPostDB',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'PostCategoryDB',
        'type': 'id',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'postId'},
          {'name': 'categoryId'},
        ],
      },
      {
        'model': 'ProjectCategoryDB',
        'type': 'id',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'projectId'},
          {'name': 'categoryId'},
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
            'generator client {\n  provider = "dart run orm"\n  output   = "../lib/generated/prisma_client"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("SHARED_DATABASE_URL")\n}\n\nmodel CategoryDB {\n  id         String   @id @default(uuid())\n  key        String\n  value      String\n  properties String\n  createdAt  DateTime @default(now())\n  updatedAt  DateTime @updatedAt\n\n  PostCategoryDb    PostCategoryDB[]\n  ProjectCategoryDb ProjectCategoryDB[]\n\n  @@map("Category")\n}\n\nmodel DailyLinkDB {\n  id              String          @id @default(uuid())\n  title           String\n  url             String\n  previewImageUrl String?\n  date            String\n  type            DailyLinkTypeDB\n\n  @@map("DailyLink")\n}\n\nenum DailyLinkTypeDB {\n  video\n  startup\n  utility\n  site\n  article\n  cases\n\n  @@map("DailyLinkType")\n}\n\nmodel BrandingProjectDB {\n  id          String              @id @default(uuid())\n  name        String\n  description String\n  createdAt   DateTime            @default(now())\n  updatedAt   DateTime            @updatedAt\n  children    BrandingPostDB[]\n  categories  ProjectCategoryDB[]\n\n  @@map("BrandingProject")\n}\n\nmodel BrandingPostDB {\n  id          String            @id @default(uuid())\n  parentId    String\n  name        String\n  description String\n  imageUrl    String?\n  createdAt   DateTime          @default(now())\n  updatedAt   DateTime          @updatedAt\n  sortOrder   Int\n  parent      BrandingProjectDB @relation(fields: [parentId], references: [id])\n  categories  PostCategoryDB[]\n\n  @@map("BrandingPost")\n}\n\nmodel PostCategoryDB {\n  BrandingPostDB BrandingPostDB @relation(fields: [postId], references: [id])\n  postId         String\n  CategoryDB     CategoryDB     @relation(fields: [categoryId], references: [id])\n  categoryId     String\n\n  @@id([postId, categoryId])\n  @@map("PostCategory")\n}\n\nmodel ProjectCategoryDB {\n  BrandingProjectDB BrandingProjectDB @relation(fields: [projectId], references: [id])\n  projectId         String\n  CategoryDB        CategoryDB        @relation(fields: [categoryId], references: [id])\n  categoryId        String\n\n  @@id([projectId, categoryId])\n  @@map("ProjectCategory")\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'SHARED_DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  CategoryDBDelegate get categoryDB => CategoryDBDelegate._(this);

  DailyLinkDBDelegate get dailyLinkDB => DailyLinkDBDelegate._(this);

  BrandingProjectDBDelegate get brandingProjectDB =>
      BrandingProjectDBDelegate._(this);

  BrandingPostDBDelegate get brandingPostDB => BrandingPostDBDelegate._(this);

  PostCategoryDBDelegate get postCategoryDB => PostCategoryDBDelegate._(this);

  ProjectCategoryDBDelegate get projectCategoryDB =>
      ProjectCategoryDBDelegate._(this);
}
