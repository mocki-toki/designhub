// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class UploadingSessionWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<_i2.UploadingSessionWhereInput,
      Iterable<_i2.UploadingSessionWhereInput>>? AND;

  final Iterable<_i2.UploadingSessionWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UploadingSessionWhereInput,
      Iterable<_i2.UploadingSessionWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expiresAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? filePath;

  final _i1.PrismaUnion<_i2.IntFilter, int>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.UploadingSessionWhereInput,
      Iterable<_i2.UploadingSessionWhereInput>>? AND;

  final Iterable<_i2.UploadingSessionWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UploadingSessionWhereInput,
      Iterable<_i2.UploadingSessionWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? expiresAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? filePath;

  final _i1.PrismaUnion<_i2.IntFilter, int>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class UploadingSessionOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionOrderByWithRelationInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? expiresAt;

  final _i2.SortOrder? filePath;

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

enum UploadingSessionScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'UploadingSession'),
  authorId<String>('authorId', 'UploadingSession'),
  createdAt<DateTime>('createdAt', 'UploadingSession'),
  expiresAt<DateTime>('expiresAt', 'UploadingSession'),
  filePath<String>('filePath', 'UploadingSession'),
  fileSize<int>('fileSize', 'UploadingSession');

  const UploadingSessionScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UploadingSessionCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionCreateInput({
    this.id,
    required this.authorId,
    this.createdAt,
    required this.expiresAt,
    required this.filePath,
    required this.fileSize,
  });

  final String? id;

  final String authorId;

  final DateTime? createdAt;

  final DateTime expiresAt;

  final String filePath;

  final int fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionUncheckedCreateInput({
    this.id,
    required this.authorId,
    this.createdAt,
    required this.expiresAt,
    required this.filePath,
    required this.fileSize,
  });

  final String? id;

  final String authorId;

  final DateTime? createdAt;

  final DateTime expiresAt;

  final String filePath;

  final int fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UploadingSessionCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionCreateManyInput({
    this.id,
    required this.authorId,
    this.createdAt,
    required this.expiresAt,
    required this.filePath,
    required this.fileSize,
  });

  final String? id;

  final String authorId;

  final DateTime? createdAt;

  final DateTime expiresAt;

  final String filePath;

  final int fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class CreateManyUploadingSessionAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUploadingSessionAndReturnOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class UploadingSessionUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionUpdateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expiresAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? filePath;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionUncheckedUpdateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expiresAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? filePath;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionUpdateManyMutationInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expiresAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? filePath;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionUncheckedUpdateManyInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      expiresAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? filePath;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionCountAggregateOutputType {
  const UploadingSessionCountAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
    this.$all,
  });

  factory UploadingSessionCountAggregateOutputType.fromJson(Map json) =>
      UploadingSessionCountAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: json['createdAt'],
        expiresAt: json['expiresAt'],
        filePath: json['filePath'],
        fileSize: json['fileSize'],
        $all: json['_all'],
      );

  final int? id;

  final int? authorId;

  final int? createdAt;

  final int? expiresAt;

  final int? filePath;

  final int? fileSize;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
        '_all': $all,
      };
}

class UploadingSessionAvgAggregateOutputType {
  const UploadingSessionAvgAggregateOutputType({this.fileSize});

  factory UploadingSessionAvgAggregateOutputType.fromJson(Map json) =>
      UploadingSessionAvgAggregateOutputType(fileSize: json['fileSize']);

  final double? fileSize;

  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionSumAggregateOutputType {
  const UploadingSessionSumAggregateOutputType({this.fileSize});

  factory UploadingSessionSumAggregateOutputType.fromJson(Map json) =>
      UploadingSessionSumAggregateOutputType(fileSize: json['fileSize']);

  final int? fileSize;

  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionMinAggregateOutputType {
  const UploadingSessionMinAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  factory UploadingSessionMinAggregateOutputType.fromJson(Map json) =>
      UploadingSessionMinAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        expiresAt: switch (json['expiresAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiresAt']
        },
        filePath: json['filePath'],
        fileSize: json['fileSize'],
      );

  final String? id;

  final String? authorId;

  final DateTime? createdAt;

  final DateTime? expiresAt;

  final String? filePath;

  final int? fileSize;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt?.toIso8601String(),
        'expiresAt': expiresAt?.toIso8601String(),
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionMaxAggregateOutputType {
  const UploadingSessionMaxAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  factory UploadingSessionMaxAggregateOutputType.fromJson(Map json) =>
      UploadingSessionMaxAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        expiresAt: switch (json['expiresAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiresAt']
        },
        filePath: json['filePath'],
        fileSize: json['fileSize'],
      );

  final String? id;

  final String? authorId;

  final DateTime? createdAt;

  final DateTime? expiresAt;

  final String? filePath;

  final int? fileSize;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt?.toIso8601String(),
        'expiresAt': expiresAt?.toIso8601String(),
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionGroupByOutputType {
  const UploadingSessionGroupByOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UploadingSessionGroupByOutputType.fromJson(Map json) =>
      UploadingSessionGroupByOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        expiresAt: switch (json['expiresAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiresAt']
        },
        filePath: json['filePath'],
        fileSize: json['fileSize'],
        $count: json['_count'] is Map
            ? _i2.UploadingSessionCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UploadingSessionAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UploadingSessionSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UploadingSessionMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UploadingSessionMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? authorId;

  final DateTime? createdAt;

  final DateTime? expiresAt;

  final String? filePath;

  final int? fileSize;

  final _i2.UploadingSessionCountAggregateOutputType? $count;

  final _i2.UploadingSessionAvgAggregateOutputType? $avg;

  final _i2.UploadingSessionSumAggregateOutputType? $sum;

  final _i2.UploadingSessionMinAggregateOutputType? $min;

  final _i2.UploadingSessionMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt?.toIso8601String(),
        'expiresAt': expiresAt?.toIso8601String(),
        'filePath': filePath,
        'fileSize': fileSize,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UploadingSessionCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionCountOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? expiresAt;

  final _i2.SortOrder? filePath;

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionAvgOrderByAggregateInput({this.fileSize});

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionMaxOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? expiresAt;

  final _i2.SortOrder? filePath;

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionMinOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? expiresAt;

  final _i2.SortOrder? filePath;

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionSumOrderByAggregateInput({this.fileSize});

  final _i2.SortOrder? fileSize;

  @override
  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionOrderByWithAggregationInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? expiresAt;

  final _i2.SortOrder? filePath;

  final _i2.SortOrder? fileSize;

  final _i2.UploadingSessionCountOrderByAggregateInput? $count;

  final _i2.UploadingSessionAvgOrderByAggregateInput? $avg;

  final _i2.UploadingSessionMaxOrderByAggregateInput? $max;

  final _i2.UploadingSessionMinOrderByAggregateInput? $min;

  final _i2.UploadingSessionSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class UploadingSessionScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final _i1.PrismaUnion<_i2.UploadingSessionScalarWhereWithAggregatesInput,
      Iterable<_i2.UploadingSessionScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UploadingSessionScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UploadingSessionScalarWhereWithAggregatesInput,
      Iterable<_i2.UploadingSessionScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? expiresAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? filePath;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionCountAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
    this.$all,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
        '_all': $all,
      };
}

class UploadingSessionGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeCountArgs({this.select});

  final _i2.UploadingSessionCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UploadingSessionAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionAvgAggregateOutputTypeSelect({this.fileSize});

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeAvgArgs({this.select});

  final _i2.UploadingSessionAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UploadingSessionSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionSumAggregateOutputTypeSelect({this.fileSize});

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {'fileSize': fileSize};
}

class UploadingSessionGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeSumArgs({this.select});

  final _i2.UploadingSessionSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UploadingSessionMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionMinAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeMinArgs({this.select});

  final _i2.UploadingSessionMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UploadingSessionMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionMaxAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
      };
}

class UploadingSessionGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeMaxArgs({this.select});

  final _i2.UploadingSessionMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UploadingSessionGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UploadingSessionGroupByOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.expiresAt,
    this.filePath,
    this.fileSize,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? expiresAt;

  final bool? filePath;

  final bool? fileSize;

  final _i1.PrismaUnion<bool, _i2.UploadingSessionGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.UploadingSessionGroupByOutputTypeAvgArgs>?
      $avg;

  final _i1.PrismaUnion<bool, _i2.UploadingSessionGroupByOutputTypeSumArgs>?
      $sum;

  final _i1.PrismaUnion<bool, _i2.UploadingSessionGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.UploadingSessionGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'createdAt': createdAt,
        'expiresAt': expiresAt,
        'filePath': filePath,
        'fileSize': fileSize,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUploadingSession {
  const AggregateUploadingSession({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUploadingSession.fromJson(Map json) =>
      AggregateUploadingSession(
        $count: json['_count'] is Map
            ? _i2.UploadingSessionCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UploadingSessionAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UploadingSessionSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UploadingSessionMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UploadingSessionMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UploadingSessionCountAggregateOutputType? $count;

  final _i2.UploadingSessionAvgAggregateOutputType? $avg;

  final _i2.UploadingSessionSumAggregateOutputType? $sum;

  final _i2.UploadingSessionMinAggregateOutputType? $min;

  final _i2.UploadingSessionMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUploadingSessionCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionCountArgs({this.select});

  final _i2.UploadingSessionCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUploadingSessionAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionAvgArgs({this.select});

  final _i2.UploadingSessionAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUploadingSessionSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionSumArgs({this.select});

  final _i2.UploadingSessionSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUploadingSessionMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionMinArgs({this.select});

  final _i2.UploadingSessionMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUploadingSessionMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionMaxArgs({this.select});

  final _i2.UploadingSessionMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUploadingSessionSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUploadingSessionSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUploadingSessionCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUploadingSessionAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUploadingSessionSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUploadingSessionMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUploadingSessionMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class FileDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.FileDBWhereInput? $is;

  final _i2.FileDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ImageDBRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ImageDBWhereInput? $is;

  final _i2.ImageDBWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class VideoDBWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, Iterable<_i2.VideoDBWhereInput>>?
      AND;

  final Iterable<_i2.VideoDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, Iterable<_i2.VideoDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fileId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? previewId;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? file;

  final _i1.PrismaUnion<_i2.ImageDBRelationFilter, _i2.ImageDBWhereInput>?
      preview;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        'file': file,
        'preview': preview,
      };
}

class VideoDBNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ImageDBWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, Iterable<_i2.ImageDBWhereInput>>?
      AND;

  final Iterable<_i2.ImageDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, Iterable<_i2.ImageDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? originalId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? thumbnailId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? smallId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? mediumId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? largeId;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>?
      original;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>?
      thumbnail;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? small;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? medium;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? large;

  final _i1.PrismaUnion<_i2.VideoDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>>? video;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class FileDBWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<_i2.FileDBWhereInput, Iterable<_i2.FileDBWhereInput>>?
      AND;

  final Iterable<_i2.FileDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FileDBWhereInput, Iterable<_i2.FileDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? contentType;

  final _i1.PrismaUnion<_i2.IntFilter, int>? size;

  final _i1.PrismaUnion<_i2.StringFilter, String>? url;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? originalImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? thumbnailImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? smallImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? mediumImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? largeImage;

  final _i1.PrismaUnion<_i2.VideoDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>>? video;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.FileDBWhereInput, Iterable<_i2.FileDBWhereInput>>?
      AND;

  final Iterable<_i2.FileDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.FileDBWhereInput, Iterable<_i2.FileDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? contentType;

  final _i1.PrismaUnion<_i2.IntFilter, int>? size;

  final _i1.PrismaUnion<_i2.StringFilter, String>? url;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? originalImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? thumbnailImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? smallImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? mediumImage;

  final _i1.PrismaUnion<_i2.ImageDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.ImageDBWhereInput, _i1.PrismaNull>>? largeImage;

  final _i1.PrismaUnion<_i2.VideoDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>>? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class ImageDBOriginalArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBOriginalArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ImageDBThumbnailArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBThumbnailArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ImageDBSmallArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBSmallArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ImageDBMediumArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBMediumArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ImageDBLargeArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBLargeArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VideoDBFileArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBFileArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VideoDBPreviewArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBPreviewArgs({
    this.select,
    this.include,
  });

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VideoDBSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  final _i1.PrismaUnion<bool, _i2.VideoDBFileArgs>? file;

  final _i1.PrismaUnion<bool, _i2.VideoDBPreviewArgs>? preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        'file': file,
        'preview': preview,
      };
}

class VideoDBInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBInclude({
    this.file,
    this.preview,
  });

  final _i1.PrismaUnion<bool, _i2.VideoDBFileArgs>? file;

  final _i1.PrismaUnion<bool, _i2.VideoDBPreviewArgs>? preview;

  @override
  Map<String, dynamic> toJson() => {
        'file': file,
        'preview': preview,
      };
}

class ImageDBVideoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBVideoArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.VideoDBWhereInput? where;

  final _i2.VideoDBSelect? select;

  final _i2.VideoDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class ImageDBInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBInclude({
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<bool, _i2.ImageDBOriginalArgs>? original;

  final _i1.PrismaUnion<bool, _i2.ImageDBThumbnailArgs>? thumbnail;

  final _i1.PrismaUnion<bool, _i2.ImageDBSmallArgs>? small;

  final _i1.PrismaUnion<bool, _i2.ImageDBMediumArgs>? medium;

  final _i1.PrismaUnion<bool, _i2.ImageDBLargeArgs>? large;

  final _i1.PrismaUnion<bool, _i2.ImageDBVideoArgs>? video;

  @override
  Map<String, dynamic> toJson() => {
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class FileDBOriginalImageArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBOriginalImageArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ImageDBWhereInput? where;

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBThumbnailImageArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBThumbnailImageArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ImageDBWhereInput? where;

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBSmallImageArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBSmallImageArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ImageDBWhereInput? where;

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBMediumImageArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBMediumImageArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ImageDBWhereInput? where;

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBLargeImageArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBLargeImageArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ImageDBWhereInput? where;

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBVideoArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBVideoArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.VideoDBWhereInput? where;

  final _i2.VideoDBSelect? select;

  final _i2.VideoDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class FileDBInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBInclude({
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<bool, _i2.FileDBOriginalImageArgs>? originalImage;

  final _i1.PrismaUnion<bool, _i2.FileDBThumbnailImageArgs>? thumbnailImage;

  final _i1.PrismaUnion<bool, _i2.FileDBSmallImageArgs>? smallImage;

  final _i1.PrismaUnion<bool, _i2.FileDBMediumImageArgs>? mediumImage;

  final _i1.PrismaUnion<bool, _i2.FileDBLargeImageArgs>? largeImage;

  final _i1.PrismaUnion<bool, _i2.FileDBVideoArgs>? video;

  @override
  Map<String, dynamic> toJson() => {
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class ImageDBSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  final _i1.PrismaUnion<bool, _i2.ImageDBOriginalArgs>? original;

  final _i1.PrismaUnion<bool, _i2.ImageDBThumbnailArgs>? thumbnail;

  final _i1.PrismaUnion<bool, _i2.ImageDBSmallArgs>? small;

  final _i1.PrismaUnion<bool, _i2.ImageDBMediumArgs>? medium;

  final _i1.PrismaUnion<bool, _i2.ImageDBLargeArgs>? large;

  final _i1.PrismaUnion<bool, _i2.ImageDBVideoArgs>? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class FileDBSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.FileDBOriginalImageArgs>? originalImage;

  final _i1.PrismaUnion<bool, _i2.FileDBThumbnailImageArgs>? thumbnailImage;

  final _i1.PrismaUnion<bool, _i2.FileDBSmallImageArgs>? smallImage;

  final _i1.PrismaUnion<bool, _i2.FileDBMediumImageArgs>? mediumImage;

  final _i1.PrismaUnion<bool, _i2.FileDBLargeImageArgs>? largeImage;

  final _i1.PrismaUnion<bool, _i2.FileDBVideoArgs>? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class VideoDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBOrderByWithRelationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? fileId;

  final _i2.SortOrder? previewId;

  final _i2.FileDBOrderByWithRelationInput? file;

  final _i2.ImageDBOrderByWithRelationInput? preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        'file': file,
        'preview': preview,
      };
}

class ImageDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBOrderByWithRelationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? originalId;

  final _i2.SortOrder? thumbnailId;

  final _i2.SortOrder? smallId;

  final _i2.SortOrder? mediumId;

  final _i2.SortOrder? largeId;

  final _i2.FileDBOrderByWithRelationInput? original;

  final _i2.FileDBOrderByWithRelationInput? thumbnail;

  final _i2.FileDBOrderByWithRelationInput? small;

  final _i2.FileDBOrderByWithRelationInput? medium;

  final _i2.FileDBOrderByWithRelationInput? large;

  final _i2.VideoDBOrderByWithRelationInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class FileDBOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBOrderByWithRelationInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? contentType;

  final _i2.SortOrder? size;

  final _i2.SortOrder? url;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.ImageDBOrderByWithRelationInput? originalImage;

  final _i2.ImageDBOrderByWithRelationInput? thumbnailImage;

  final _i2.ImageDBOrderByWithRelationInput? smallImage;

  final _i2.ImageDBOrderByWithRelationInput? mediumImage;

  final _i2.ImageDBOrderByWithRelationInput? largeImage;

  final _i2.VideoDBOrderByWithRelationInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

enum FileDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'FileDB'),
  authorId<String>('authorId', 'FileDB'),
  name$<String>('name', 'FileDB'),
  contentType<String>('contentType', 'FileDB'),
  size<int>('size', 'FileDB'),
  url<String>('url', 'FileDB'),
  createdAt<DateTime>('createdAt', 'FileDB'),
  updatedAt<DateTime>('updatedAt', 'FileDB');

  const FileDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class FileDBCreateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutVideoInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
      };
}

class VideoDBUncheckedCreateWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedCreateWithoutPreviewInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.fileId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String fileId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
      };
}

class VideoDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBWhereUniqueInput({
    this.id,
    this.fileId,
    this.previewId,
    this.AND,
    this.OR,
    this.NOT,
    this.createdAt,
    this.updatedAt,
    this.file,
    this.preview,
  });

  final String? id;

  final String? fileId;

  final String? previewId;

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, Iterable<_i2.VideoDBWhereInput>>?
      AND;

  final Iterable<_i2.VideoDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.VideoDBWhereInput, Iterable<_i2.VideoDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? file;

  final _i1.PrismaUnion<_i2.ImageDBRelationFilter, _i2.ImageDBWhereInput>?
      preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fileId': fileId,
        'previewId': previewId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'file': file,
        'preview': preview,
      };
}

class VideoDBCreateOrConnectWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateOrConnectWithoutPreviewInput({
    required this.where,
    required this.create,
  });

  final _i2.VideoDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class VideoDBUncheckedCreateNestedOneWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedCreateNestedOneWithoutPreviewInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutPreviewInput? connectOrCreate;

  final _i2.VideoDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBUncheckedCreateWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutOriginalInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.thumbnailId,
    required this.smallId,
    required this.mediumId,
    required this.largeId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String thumbnailId;

  final String smallId;

  final String mediumId;

  final String largeId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBWhereUniqueInput({
    this.id,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.AND,
    this.OR,
    this.NOT,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final String? id;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, Iterable<_i2.ImageDBWhereInput>>?
      AND;

  final Iterable<_i2.ImageDBWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ImageDBWhereInput, Iterable<_i2.ImageDBWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>?
      original;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>?
      thumbnail;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? small;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? medium;

  final _i1.PrismaUnion<_i2.FileDBRelationFilter, _i2.FileDBWhereInput>? large;

  final _i1.PrismaUnion<_i2.VideoDBNullableRelationFilter,
      _i1.PrismaUnion<_i2.VideoDBWhereInput, _i1.PrismaNull>>? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBCreateOrConnectWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutOriginalInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBUncheckedCreateNestedOneWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateNestedOneWithoutOriginalInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutOriginalInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBUncheckedCreateWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutThumbnailInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.smallId,
    required this.mediumId,
    required this.largeId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String smallId;

  final String mediumId;

  final String largeId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBCreateOrConnectWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutThumbnailInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBUncheckedCreateNestedOneWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateNestedOneWithoutThumbnailInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutThumbnailInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBUncheckedCreateWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutSmallInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.mediumId,
    required this.largeId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String mediumId;

  final String largeId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBCreateOrConnectWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutSmallInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBUncheckedCreateNestedOneWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateNestedOneWithoutSmallInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutSmallInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBUncheckedCreateWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutMediumInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.smallId,
    required this.largeId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String smallId;

  final String largeId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBCreateOrConnectWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutMediumInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBUncheckedCreateNestedOneWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateNestedOneWithoutMediumInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutMediumInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBUncheckedCreateWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutLargeInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.smallId,
    required this.mediumId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String smallId;

  final String mediumId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'video': video,
      };
}

class ImageDBCreateOrConnectWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutLargeInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBUncheckedCreateNestedOneWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateNestedOneWithoutLargeInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutLargeInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBUncheckedCreateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutVideoInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
      };
}

class FileDBCreateOrConnectWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutVideoInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutVideoInput,
      _i2.FileDBUncheckedCreateWithoutVideoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutVideoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutVideoInput,
      _i2.FileDBUncheckedCreateWithoutVideoInput>? create;

  final _i2.FileDBCreateOrConnectWithoutVideoInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class VideoDBCreateWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateWithoutPreviewInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.file,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutVideoInput file;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'file': file,
      };
}

class VideoDBCreateNestedOneWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateNestedOneWithoutPreviewInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutPreviewInput? connectOrCreate;

  final _i2.VideoDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutLargeInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.thumbnail,
    required this.small,
    required this.medium,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'video': video,
      };
}

class ImageDBCreateNestedOneWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutLargeInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutLargeInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutMediumImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class VideoDBUncheckedCreateWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedCreateWithoutFileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.previewId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'previewId': previewId,
      };
}

class VideoDBCreateOrConnectWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateOrConnectWithoutFileInput({
    required this.where,
    required this.create,
  });

  final _i2.VideoDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class VideoDBUncheckedCreateNestedOneWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedCreateNestedOneWithoutFileInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutFileInput? connectOrCreate;

  final _i2.VideoDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBUncheckedCreateWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutMediumImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBCreateOrConnectWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutMediumImageInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutMediumImageInput,
      _i2.FileDBUncheckedCreateWithoutMediumImageInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutMediumImageInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutMediumImageInput,
      _i2.FileDBUncheckedCreateWithoutMediumImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutMediumImageInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutVideoInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
      };
}

class ImageDBUncheckedCreateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateWithoutVideoInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.smallId,
    required this.mediumId,
    required this.largeId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String smallId;

  final String mediumId;

  final String largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBCreateOrConnectWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateOrConnectWithoutVideoInput({
    required this.where,
    required this.create,
  });

  final _i2.ImageDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutVideoInput,
      _i2.ImageDBUncheckedCreateWithoutVideoInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ImageDBCreateNestedOneWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutVideoInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutVideoInput,
      _i2.ImageDBUncheckedCreateWithoutVideoInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutVideoInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class VideoDBCreateWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateWithoutFileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.preview,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutVideoInput preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'preview': preview,
      };
}

class VideoDBCreateNestedOneWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateNestedOneWithoutFileInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutFileInput? connectOrCreate;

  final _i2.VideoDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutLargeImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'video': video,
      };
}

class FileDBUncheckedCreateWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutLargeImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'video': video,
      };
}

class FileDBCreateOrConnectWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutLargeImageInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutLargeImageInput,
      _i2.FileDBUncheckedCreateWithoutLargeImageInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutLargeImageInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutLargeImageInput,
      _i2.FileDBUncheckedCreateWithoutLargeImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutLargeImageInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutMediumInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.thumbnail,
    required this.small,
    required this.large,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'large': large,
        'video': video,
      };
}

class ImageDBCreateNestedOneWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutMediumInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutMediumInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutSmallImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedCreateWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutSmallImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBCreateOrConnectWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutSmallImageInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutSmallImageInput,
      _i2.FileDBUncheckedCreateWithoutSmallImageInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutSmallImageInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutSmallImageInput,
      _i2.FileDBUncheckedCreateWithoutSmallImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutSmallImageInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutThumbnailInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.small,
    required this.medium,
    required this.large,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBCreateNestedOneWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutThumbnailInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutThumbnailInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutOriginalImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedCreateWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutOriginalImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBCreateOrConnectWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutOriginalImageInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutOriginalImageInput,
      _i2.FileDBUncheckedCreateWithoutOriginalImageInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutOriginalImageInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutOriginalImageInput,
      _i2.FileDBUncheckedCreateWithoutOriginalImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutOriginalImageInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutSmallInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.thumbnail,
    required this.medium,
    required this.large,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBCreateNestedOneWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutSmallInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutSmallInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateWithoutThumbnailImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedCreateWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateWithoutThumbnailImageInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBCreateOrConnectWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateOrConnectWithoutThumbnailImageInput({
    required this.where,
    required this.create,
  });

  final _i2.FileDBWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedCreateWithoutThumbnailImageInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class FileDBCreateNestedOneWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateNestedOneWithoutThumbnailImageInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedCreateWithoutThumbnailImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutThumbnailImageInput? connectOrCreate;

  final _i2.FileDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ImageDBCreateWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateWithoutOriginalInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBCreateNestedOneWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateNestedOneWithoutOriginalInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutOriginalInput? connectOrCreate;

  final _i2.ImageDBWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class FileDBCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBCreateNestedOneWithoutThumbnailInput? thumbnailImage;

  final _i2.ImageDBCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedCreateInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutOriginalInput? originalImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutThumbnailInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutSmallInput? smallImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutMediumInput? mediumImage;

  final _i2.ImageDBUncheckedCreateNestedOneWithoutLargeInput? largeImage;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutFileInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCreateManyInput({
    this.id,
    required this.authorId,
    required this.name,
    required this.contentType,
    required this.size,
    required this.url,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String authorId;

  final String name;

  final String contentType;

  final int size;

  final String url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyFileDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyFileDBAndReturnOutputTypeSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBUpdateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutVideoInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
      };
}

class VideoDBUncheckedUpdateWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateWithoutPreviewInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fileId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
      };
}

class VideoDBUpdateToOneWithWhereWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateToOneWithWhereWithoutPreviewInput({
    this.where,
    required this.data,
  });

  final _i2.VideoDBWhereInput? where;

  final _i1.PrismaUnion<_i2.VideoDBUpdateWithoutPreviewInput,
      _i2.VideoDBUncheckedUpdateWithoutPreviewInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class VideoDBUncheckedUpdateOneWithoutPreviewNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateOneWithoutPreviewNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutPreviewInput? connectOrCreate;

  final _i2.VideoDBUpsertWithoutPreviewInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? delete;

  final _i2.VideoDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VideoDBUpdateToOneWithWhereWithoutPreviewInput,
      _i1.PrismaUnion<_i2.VideoDBUpdateWithoutPreviewInput,
          _i2.VideoDBUncheckedUpdateWithoutPreviewInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUncheckedUpdateWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutOriginalInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBUpdateToOneWithWhereWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutOriginalInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutOriginalInput,
      _i2.ImageDBUncheckedUpdateWithoutOriginalInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUncheckedUpdateOneWithoutOriginalNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateOneWithoutOriginalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutOriginalInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutOriginalInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutOriginalInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutOriginalInput,
          _i2.ImageDBUncheckedUpdateWithoutOriginalInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUncheckedUpdateWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutThumbnailInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBUpdateToOneWithWhereWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutThumbnailInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutThumbnailInput,
      _i2.ImageDBUncheckedUpdateWithoutThumbnailInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutThumbnailInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutThumbnailInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutThumbnailInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutThumbnailInput,
          _i2.ImageDBUncheckedUpdateWithoutThumbnailInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUncheckedUpdateWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutSmallInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.mediumId,
    this.largeId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBUpdateToOneWithWhereWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutSmallInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutSmallInput,
      _i2.ImageDBUncheckedUpdateWithoutSmallInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUncheckedUpdateOneWithoutSmallNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateOneWithoutSmallNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutSmallInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutSmallInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutSmallInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutSmallInput,
          _i2.ImageDBUncheckedUpdateWithoutSmallInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUncheckedUpdateWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutMediumInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.largeId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBUpdateToOneWithWhereWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutMediumInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutMediumInput,
      _i2.ImageDBUncheckedUpdateWithoutMediumInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUncheckedUpdateOneWithoutMediumNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateOneWithoutMediumNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutMediumInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutMediumInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutMediumInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutMediumInput,
          _i2.ImageDBUncheckedUpdateWithoutMediumInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUncheckedUpdateWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutLargeInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'video': video,
      };
}

class ImageDBUpdateToOneWithWhereWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutLargeInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutLargeInput,
      _i2.ImageDBUncheckedUpdateWithoutLargeInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUncheckedUpdateOneWithoutLargeNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateOneWithoutLargeNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutLargeInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutLargeInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutLargeInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutLargeInput,
          _i2.ImageDBUncheckedUpdateWithoutLargeInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUncheckedUpdateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutVideoInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
      };
}

class FileDBUpsertWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutVideoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutVideoInput,
      _i2.FileDBUncheckedUpdateWithoutVideoInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutVideoInput,
      _i2.FileDBUncheckedCreateWithoutVideoInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutVideoInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutVideoInput,
      _i2.FileDBUncheckedUpdateWithoutVideoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutVideoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutVideoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutVideoInput,
      _i2.FileDBUncheckedCreateWithoutVideoInput>? create;

  final _i2.FileDBCreateOrConnectWithoutVideoInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutVideoInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutVideoInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutVideoInput,
          _i2.FileDBUncheckedUpdateWithoutVideoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class VideoDBUpdateWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateWithoutPreviewInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.file,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutVideoNestedInput? file;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'file': file,
      };
}

class VideoDBUpsertWithoutPreviewInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpsertWithoutPreviewInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.VideoDBUpdateWithoutPreviewInput,
      _i2.VideoDBUncheckedUpdateWithoutPreviewInput> update;

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput> create;

  final _i2.VideoDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class VideoDBUpdateOneWithoutPreviewNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateOneWithoutPreviewNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutPreviewInput,
      _i2.VideoDBUncheckedCreateWithoutPreviewInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutPreviewInput? connectOrCreate;

  final _i2.VideoDBUpsertWithoutPreviewInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? delete;

  final _i2.VideoDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VideoDBUpdateToOneWithWhereWithoutPreviewInput,
      _i1.PrismaUnion<_i2.VideoDBUpdateWithoutPreviewInput,
          _i2.VideoDBUncheckedUpdateWithoutPreviewInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutLargeInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'video': video,
      };
}

class ImageDBUpsertWithoutLargeInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutLargeInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutLargeInput,
      _i2.ImageDBUncheckedUpdateWithoutLargeInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateOneWithoutLargeNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneWithoutLargeNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutLargeInput,
      _i2.ImageDBUncheckedCreateWithoutLargeInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutLargeInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutLargeInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutLargeInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutLargeInput,
          _i2.ImageDBUncheckedUpdateWithoutLargeInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutMediumImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class VideoDBUncheckedUpdateWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateWithoutFileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.previewId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'previewId': previewId,
      };
}

class VideoDBUpdateToOneWithWhereWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateToOneWithWhereWithoutFileInput({
    this.where,
    required this.data,
  });

  final _i2.VideoDBWhereInput? where;

  final _i1.PrismaUnion<_i2.VideoDBUpdateWithoutFileInput,
      _i2.VideoDBUncheckedUpdateWithoutFileInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class VideoDBUncheckedUpdateOneWithoutFileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateOneWithoutFileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutFileInput? connectOrCreate;

  final _i2.VideoDBUpsertWithoutFileInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? delete;

  final _i2.VideoDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VideoDBUpdateToOneWithWhereWithoutFileInput,
      _i1.PrismaUnion<_i2.VideoDBUpdateWithoutFileInput,
          _i2.VideoDBUncheckedUpdateWithoutFileInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUncheckedUpdateWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutMediumImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUpsertWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutMediumImageInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutMediumImageInput,
      _i2.FileDBUncheckedUpdateWithoutMediumImageInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutMediumImageInput,
      _i2.FileDBUncheckedCreateWithoutMediumImageInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutMediumImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutMediumImageInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutMediumImageInput,
      _i2.FileDBUncheckedUpdateWithoutMediumImageInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutMediumImageNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutMediumImageNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutMediumImageInput,
      _i2.FileDBUncheckedCreateWithoutMediumImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutMediumImageInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutMediumImageInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutMediumImageInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutMediumImageInput,
          _i2.FileDBUncheckedUpdateWithoutMediumImageInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutVideoInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
      };
}

class ImageDBUncheckedUpdateWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateWithoutVideoInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBUpsertWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutVideoInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutVideoInput,
      _i2.ImageDBUncheckedUpdateWithoutVideoInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutVideoInput,
      _i2.ImageDBUncheckedCreateWithoutVideoInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateToOneWithWhereWithoutVideoInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateToOneWithWhereWithoutVideoInput({
    this.where,
    required this.data,
  });

  final _i2.ImageDBWhereInput? where;

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutVideoInput,
      _i2.ImageDBUncheckedUpdateWithoutVideoInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ImageDBUpdateOneRequiredWithoutVideoNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneRequiredWithoutVideoNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutVideoInput,
      _i2.ImageDBUncheckedCreateWithoutVideoInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutVideoInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutVideoInput? upsert;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutVideoInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutVideoInput,
          _i2.ImageDBUncheckedUpdateWithoutVideoInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class VideoDBUpdateWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateWithoutFileInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.preview,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneRequiredWithoutVideoNestedInput? preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'preview': preview,
      };
}

class VideoDBUpsertWithoutFileInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpsertWithoutFileInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.VideoDBUpdateWithoutFileInput,
      _i2.VideoDBUncheckedUpdateWithoutFileInput> update;

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput> create;

  final _i2.VideoDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class VideoDBUpdateOneWithoutFileNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateOneWithoutFileNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VideoDBCreateWithoutFileInput,
      _i2.VideoDBUncheckedCreateWithoutFileInput>? create;

  final _i2.VideoDBCreateOrConnectWithoutFileInput? connectOrCreate;

  final _i2.VideoDBUpsertWithoutFileInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VideoDBWhereInput>? delete;

  final _i2.VideoDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VideoDBUpdateToOneWithWhereWithoutFileInput,
      _i1.PrismaUnion<_i2.VideoDBUpdateWithoutFileInput,
          _i2.VideoDBUncheckedUpdateWithoutFileInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutLargeImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'video': video,
      };
}

class FileDBUncheckedUpdateWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutLargeImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'video': video,
      };
}

class FileDBUpsertWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutLargeImageInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutLargeImageInput,
      _i2.FileDBUncheckedUpdateWithoutLargeImageInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutLargeImageInput,
      _i2.FileDBUncheckedCreateWithoutLargeImageInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutLargeImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutLargeImageInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutLargeImageInput,
      _i2.FileDBUncheckedUpdateWithoutLargeImageInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutLargeImageNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutLargeImageNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutLargeImageInput,
      _i2.FileDBUncheckedCreateWithoutLargeImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutLargeImageInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutLargeImageInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutLargeImageInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutLargeImageInput,
          _i2.FileDBUncheckedUpdateWithoutLargeImageInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutMediumInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.small,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'large': large,
        'video': video,
      };
}

class ImageDBUpsertWithoutMediumInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutMediumInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutMediumInput,
      _i2.ImageDBUncheckedUpdateWithoutMediumInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateOneWithoutMediumNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneWithoutMediumNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutMediumInput,
      _i2.ImageDBUncheckedCreateWithoutMediumInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutMediumInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutMediumInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutMediumInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutMediumInput,
          _i2.ImageDBUncheckedUpdateWithoutMediumInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutSmallImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedUpdateWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutSmallImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUpsertWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutSmallImageInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutSmallImageInput,
      _i2.FileDBUncheckedUpdateWithoutSmallImageInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutSmallImageInput,
      _i2.FileDBUncheckedCreateWithoutSmallImageInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutSmallImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutSmallImageInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutSmallImageInput,
      _i2.FileDBUncheckedUpdateWithoutSmallImageInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutSmallImageNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutSmallImageNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutSmallImageInput,
      _i2.FileDBUncheckedCreateWithoutSmallImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutSmallImageInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutSmallImageInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutSmallImageInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutSmallImageInput,
          _i2.FileDBUncheckedUpdateWithoutSmallImageInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutThumbnailInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBUpsertWithoutThumbnailInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutThumbnailInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutThumbnailInput,
      _i2.ImageDBUncheckedUpdateWithoutThumbnailInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateOneWithoutThumbnailNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneWithoutThumbnailNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutThumbnailInput,
      _i2.ImageDBUncheckedCreateWithoutThumbnailInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutThumbnailInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutThumbnailInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutThumbnailInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutThumbnailInput,
          _i2.ImageDBUncheckedUpdateWithoutThumbnailInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutOriginalImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedUpdateWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutOriginalImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUpsertWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutOriginalImageInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutOriginalImageInput,
      _i2.FileDBUncheckedUpdateWithoutOriginalImageInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutOriginalImageInput,
      _i2.FileDBUncheckedCreateWithoutOriginalImageInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutOriginalImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutOriginalImageInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutOriginalImageInput,
      _i2.FileDBUncheckedUpdateWithoutOriginalImageInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutOriginalImageNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutOriginalImageNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutOriginalImageInput,
      _i2.FileDBUncheckedCreateWithoutOriginalImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutOriginalImageInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutOriginalImageInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutOriginalImageInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutOriginalImageInput,
          _i2.FileDBUncheckedUpdateWithoutOriginalImageInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutSmallInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBUpsertWithoutSmallInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutSmallInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutSmallInput,
      _i2.ImageDBUncheckedUpdateWithoutSmallInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateOneWithoutSmallNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneWithoutSmallNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutSmallInput,
      _i2.ImageDBUncheckedCreateWithoutSmallInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutSmallInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutSmallInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutSmallInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutSmallInput,
          _i2.ImageDBUncheckedUpdateWithoutSmallInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateWithoutThumbnailImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedUpdateWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateWithoutThumbnailImageInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUpsertWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpsertWithoutThumbnailImageInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedUpdateWithoutThumbnailImageInput> update;

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedCreateWithoutThumbnailImageInput> create;

  final _i2.FileDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class FileDBUpdateToOneWithWhereWithoutThumbnailImageInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateToOneWithWhereWithoutThumbnailImageInput({
    this.where,
    required this.data,
  });

  final _i2.FileDBWhereInput? where;

  final _i1.PrismaUnion<_i2.FileDBUpdateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedUpdateWithoutThumbnailImageInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.FileDBCreateWithoutThumbnailImageInput,
      _i2.FileDBUncheckedCreateWithoutThumbnailImageInput>? create;

  final _i2.FileDBCreateOrConnectWithoutThumbnailImageInput? connectOrCreate;

  final _i2.FileDBUpsertWithoutThumbnailImageInput? upsert;

  final _i2.FileDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.FileDBUpdateToOneWithWhereWithoutThumbnailImageInput,
      _i1.PrismaUnion<_i2.FileDBUpdateWithoutThumbnailImageInput,
          _i2.FileDBUncheckedUpdateWithoutThumbnailImageInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ImageDBUpdateWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateWithoutOriginalInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBUpsertWithoutOriginalInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpsertWithoutOriginalInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ImageDBUpdateWithoutOriginalInput,
      _i2.ImageDBUncheckedUpdateWithoutOriginalInput> update;

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput> create;

  final _i2.ImageDBWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ImageDBUpdateOneWithoutOriginalNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateOneWithoutOriginalNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ImageDBCreateWithoutOriginalInput,
      _i2.ImageDBUncheckedCreateWithoutOriginalInput>? create;

  final _i2.ImageDBCreateOrConnectWithoutOriginalInput? connectOrCreate;

  final _i2.ImageDBUpsertWithoutOriginalInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ImageDBWhereInput>? delete;

  final _i2.ImageDBWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ImageDBUpdateToOneWithWhereWithoutOriginalInput,
      _i1.PrismaUnion<_i2.ImageDBUpdateWithoutOriginalInput,
          _i2.ImageDBUncheckedUpdateWithoutOriginalInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class FileDBUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUpdateOneWithoutThumbnailNestedInput? thumbnailImage;

  final _i2.ImageDBUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.originalImage,
    this.thumbnailImage,
    this.smallImage,
    this.mediumImage,
    this.largeImage,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.ImageDBUncheckedUpdateOneWithoutOriginalNestedInput? originalImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutThumbnailNestedInput?
      thumbnailImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutSmallNestedInput? smallImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutMediumNestedInput? mediumImage;

  final _i2.ImageDBUncheckedUpdateOneWithoutLargeNestedInput? largeImage;

  final _i2.VideoDBUncheckedUpdateOneWithoutFileNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalImage': originalImage,
        'thumbnailImage': thumbnailImage,
        'smallImage': smallImage,
        'mediumImage': mediumImage,
        'largeImage': largeImage,
        'video': video,
      };
}

class FileDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUpdateManyMutationInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBUncheckedUpdateManyInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      contentType;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? size;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? url;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBCountAggregateOutputType {
  const FileDBCountAggregateOutputType({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory FileDBCountAggregateOutputType.fromJson(Map json) =>
      FileDBCountAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? authorId;

  final int? name;

  final int? contentType;

  final int? size;

  final int? url;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class FileDBAvgAggregateOutputType {
  const FileDBAvgAggregateOutputType({this.size});

  factory FileDBAvgAggregateOutputType.fromJson(Map json) =>
      FileDBAvgAggregateOutputType(size: json['size']);

  final double? size;

  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBSumAggregateOutputType {
  const FileDBSumAggregateOutputType({this.size});

  factory FileDBSumAggregateOutputType.fromJson(Map json) =>
      FileDBSumAggregateOutputType(size: json['size']);

  final int? size;

  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBMinAggregateOutputType {
  const FileDBMinAggregateOutputType({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  factory FileDBMinAggregateOutputType.fromJson(Map json) =>
      FileDBMinAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? authorId;

  final String? name;

  final String? contentType;

  final int? size;

  final String? url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class FileDBMaxAggregateOutputType {
  const FileDBMaxAggregateOutputType({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  factory FileDBMaxAggregateOutputType.fromJson(Map json) =>
      FileDBMaxAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? authorId;

  final String? name;

  final String? contentType;

  final int? size;

  final String? url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class FileDBGroupByOutputType {
  const FileDBGroupByOutputType({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FileDBGroupByOutputType.fromJson(Map json) => FileDBGroupByOutputType(
        id: json['id'],
        authorId: json['authorId'],
        name: json['name'],
        contentType: json['contentType'],
        size: json['size'],
        url: json['url'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        $count: json['_count'] is Map
            ? _i2.FileDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.FileDBAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.FileDBSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FileDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FileDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? authorId;

  final String? name;

  final String? contentType;

  final int? size;

  final String? url;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCountAggregateOutputType? $count;

  final _i2.FileDBAvgAggregateOutputType? $avg;

  final _i2.FileDBSumAggregateOutputType? $sum;

  final _i2.FileDBMinAggregateOutputType? $min;

  final _i2.FileDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class FileDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCountOrderByAggregateInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? contentType;

  final _i2.SortOrder? size;

  final _i2.SortOrder? url;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBAvgOrderByAggregateInput({this.size});

  final _i2.SortOrder? size;

  @override
  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBMaxOrderByAggregateInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? contentType;

  final _i2.SortOrder? size;

  final _i2.SortOrder? url;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBMinOrderByAggregateInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? contentType;

  final _i2.SortOrder? size;

  final _i2.SortOrder? url;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBSumOrderByAggregateInput({this.size});

  final _i2.SortOrder? size;

  @override
  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBOrderByWithAggregationInput({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? contentType;

  final _i2.SortOrder? size;

  final _i2.SortOrder? url;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.FileDBCountOrderByAggregateInput? $count;

  final _i2.FileDBAvgOrderByAggregateInput? $avg;

  final _i2.FileDBMaxOrderByAggregateInput? $max;

  final _i2.FileDBMinOrderByAggregateInput? $min;

  final _i2.FileDBSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class FileDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.FileDBScalarWhereWithAggregatesInput,
      Iterable<_i2.FileDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.FileDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.FileDBScalarWhereWithAggregatesInput,
      Iterable<_i2.FileDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? authorId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? contentType;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? size;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? url;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBCountAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class FileDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeCountArgs({this.select});

  final _i2.FileDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FileDBAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBAvgAggregateOutputTypeSelect({this.size});

  final bool? size;

  @override
  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeAvgArgs({this.select});

  final _i2.FileDBAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FileDBSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBSumAggregateOutputTypeSelect({this.size});

  final bool? size;

  @override
  Map<String, dynamic> toJson() => {'size': size};
}

class FileDBGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeSumArgs({this.select});

  final _i2.FileDBSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FileDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBMinAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeMinArgs({this.select});

  final _i2.FileDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FileDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBMaxAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class FileDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.FileDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class FileDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FileDBGroupByOutputTypeSelect({
    this.id,
    this.authorId,
    this.name,
    this.contentType,
    this.size,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? authorId;

  final bool? name;

  final bool? contentType;

  final bool? size;

  final bool? url;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.FileDBGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.FileDBGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.FileDBGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.FileDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.FileDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'name': name,
        'contentType': contentType,
        'size': size,
        'url': url,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateFileDB {
  const AggregateFileDB({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateFileDB.fromJson(Map json) => AggregateFileDB(
        $count: json['_count'] is Map
            ? _i2.FileDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.FileDBAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.FileDBSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.FileDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.FileDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.FileDBCountAggregateOutputType? $count;

  final _i2.FileDBAvgAggregateOutputType? $avg;

  final _i2.FileDBSumAggregateOutputType? $sum;

  final _i2.FileDBMinAggregateOutputType? $min;

  final _i2.FileDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateFileDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBCountArgs({this.select});

  final _i2.FileDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFileDBAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBAvgArgs({this.select});

  final _i2.FileDBAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFileDBSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBSumArgs({this.select});

  final _i2.FileDBSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFileDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBMinArgs({this.select});

  final _i2.FileDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFileDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBMaxArgs({this.select});

  final _i2.FileDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateFileDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateFileDBSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateFileDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateFileDBAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateFileDBSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateFileDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateFileDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum ImageDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'ImageDB'),
  createdAt<DateTime>('createdAt', 'ImageDB'),
  updatedAt<DateTime>('updatedAt', 'ImageDB'),
  originalId<String>('originalId', 'ImageDB'),
  thumbnailId<String>('thumbnailId', 'ImageDB'),
  smallId<String>('smallId', 'ImageDB'),
  mediumId<String>('mediumId', 'ImageDB'),
  largeId<String>('largeId', 'ImageDB');

  const ImageDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ImageDBCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.original,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutOriginalImageInput original;

  final _i2.FileDBCreateNestedOneWithoutThumbnailImageInput thumbnail;

  final _i2.FileDBCreateNestedOneWithoutSmallImageInput small;

  final _i2.FileDBCreateNestedOneWithoutMediumImageInput medium;

  final _i2.FileDBCreateNestedOneWithoutLargeImageInput large;

  final _i2.VideoDBCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.smallId,
    required this.mediumId,
    required this.largeId,
    this.video,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String smallId;

  final String mediumId;

  final String largeId;

  final _i2.VideoDBUncheckedCreateNestedOneWithoutPreviewInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCreateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.originalId,
    required this.thumbnailId,
    required this.smallId,
    required this.mediumId,
    required this.largeId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String originalId;

  final String thumbnailId;

  final String smallId;

  final String mediumId;

  final String largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class CreateManyImageDBAndReturnOutputTypeOriginalArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeOriginalArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyImageDBAndReturnOutputTypeThumbnailArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeThumbnailArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyImageDBAndReturnOutputTypeSmallArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeSmallArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyImageDBAndReturnOutputTypeMediumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeMediumArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyImageDBAndReturnOutputTypeLargeArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeLargeArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyImageDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeOriginalArgs>?
      original;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeThumbnailArgs>?
      thumbnail;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeSmallArgs>?
      small;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeMediumArgs>?
      medium;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeLargeArgs>?
      large;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
      };
}

class CreateManyImageDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyImageDBAndReturnOutputTypeInclude({
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeOriginalArgs>?
      original;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeThumbnailArgs>?
      thumbnail;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeSmallArgs>?
      small;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeMediumArgs>?
      medium;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyImageDBAndReturnOutputTypeLargeArgs>?
      large;

  @override
  Map<String, dynamic> toJson() => {
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
      };
}

class ImageDBUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.original,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutOriginalImageNestedInput? original;

  final _i2.FileDBUpdateOneRequiredWithoutThumbnailImageNestedInput? thumbnail;

  final _i2.FileDBUpdateOneRequiredWithoutSmallImageNestedInput? small;

  final _i2.FileDBUpdateOneRequiredWithoutMediumImageNestedInput? medium;

  final _i2.FileDBUpdateOneRequiredWithoutLargeImageNestedInput? large;

  final _i2.VideoDBUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'original': original,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'video': video,
      };
}

class ImageDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.video,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  final _i2.VideoDBUncheckedUpdateOneWithoutPreviewNestedInput? video;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        'video': video,
      };
}

class ImageDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class ImageDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBUncheckedUpdateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      originalId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      thumbnailId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? smallId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? mediumId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBCountAggregateOutputType {
  const ImageDBCountAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.$all,
  });

  factory ImageDBCountAggregateOutputType.fromJson(Map json) =>
      ImageDBCountAggregateOutputType(
        id: json['id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
        $all: json['_all'],
      );

  final int? id;

  final int? createdAt;

  final int? updatedAt;

  final int? originalId;

  final int? thumbnailId;

  final int? smallId;

  final int? mediumId;

  final int? largeId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        '_all': $all,
      };
}

class ImageDBMinAggregateOutputType {
  const ImageDBMinAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  factory ImageDBMinAggregateOutputType.fromJson(Map json) =>
      ImageDBMinAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBMaxAggregateOutputType {
  const ImageDBMaxAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  factory ImageDBMaxAggregateOutputType.fromJson(Map json) =>
      ImageDBMaxAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBGroupByOutputType {
  const ImageDBGroupByOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ImageDBGroupByOutputType.fromJson(Map json) =>
      ImageDBGroupByOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        originalId: json['originalId'],
        thumbnailId: json['thumbnailId'],
        smallId: json['smallId'],
        mediumId: json['mediumId'],
        largeId: json['largeId'],
        $count: json['_count'] is Map
            ? _i2.ImageDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ImageDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ImageDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? originalId;

  final String? thumbnailId;

  final String? smallId;

  final String? mediumId;

  final String? largeId;

  final _i2.ImageDBCountAggregateOutputType? $count;

  final _i2.ImageDBMinAggregateOutputType? $min;

  final _i2.ImageDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ImageDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCountOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? originalId;

  final _i2.SortOrder? thumbnailId;

  final _i2.SortOrder? smallId;

  final _i2.SortOrder? mediumId;

  final _i2.SortOrder? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBMaxOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? originalId;

  final _i2.SortOrder? thumbnailId;

  final _i2.SortOrder? smallId;

  final _i2.SortOrder? mediumId;

  final _i2.SortOrder? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBMinOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? originalId;

  final _i2.SortOrder? thumbnailId;

  final _i2.SortOrder? smallId;

  final _i2.SortOrder? mediumId;

  final _i2.SortOrder? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBOrderByWithAggregationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? originalId;

  final _i2.SortOrder? thumbnailId;

  final _i2.SortOrder? smallId;

  final _i2.SortOrder? mediumId;

  final _i2.SortOrder? largeId;

  final _i2.ImageDBCountOrderByAggregateInput? $count;

  final _i2.ImageDBMaxOrderByAggregateInput? $max;

  final _i2.ImageDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ImageDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final _i1.PrismaUnion<_i2.ImageDBScalarWhereWithAggregatesInput,
      Iterable<_i2.ImageDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ImageDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ImageDBScalarWhereWithAggregatesInput,
      Iterable<_i2.ImageDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? originalId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? thumbnailId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? smallId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? mediumId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBCountAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.$all,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        '_all': $all,
      };
}

class ImageDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBGroupByOutputTypeCountArgs({this.select});

  final _i2.ImageDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ImageDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBMinAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBGroupByOutputTypeMinArgs({this.select});

  final _i2.ImageDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ImageDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBMaxAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
      };
}

class ImageDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.ImageDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ImageDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ImageDBGroupByOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.originalId,
    this.thumbnailId,
    this.smallId,
    this.mediumId,
    this.largeId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? originalId;

  final bool? thumbnailId;

  final bool? smallId;

  final bool? mediumId;

  final bool? largeId;

  final _i1.PrismaUnion<bool, _i2.ImageDBGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ImageDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ImageDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'originalId': originalId,
        'thumbnailId': thumbnailId,
        'smallId': smallId,
        'mediumId': mediumId,
        'largeId': largeId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateImageDB {
  const AggregateImageDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateImageDB.fromJson(Map json) => AggregateImageDB(
        $count: json['_count'] is Map
            ? _i2.ImageDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ImageDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ImageDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ImageDBCountAggregateOutputType? $count;

  final _i2.ImageDBMinAggregateOutputType? $min;

  final _i2.ImageDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateImageDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateImageDBCountArgs({this.select});

  final _i2.ImageDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateImageDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateImageDBMinArgs({this.select});

  final _i2.ImageDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateImageDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateImageDBMaxArgs({this.select});

  final _i2.ImageDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateImageDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateImageDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateImageDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateImageDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateImageDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum VideoDBScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'VideoDB'),
  createdAt<DateTime>('createdAt', 'VideoDB'),
  updatedAt<DateTime>('updatedAt', 'VideoDB'),
  fileId<String>('fileId', 'VideoDB'),
  previewId<String>('previewId', 'VideoDB');

  const VideoDBScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class VideoDBCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.file,
    required this.preview,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.FileDBCreateNestedOneWithoutVideoInput file;

  final _i2.ImageDBCreateNestedOneWithoutVideoInput preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'file': file,
        'preview': preview,
      };
}

class VideoDBUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedCreateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.fileId,
    required this.previewId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String fileId;

  final String previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCreateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.fileId,
    required this.previewId,
  });

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String fileId;

  final String previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class CreateManyVideoDBAndReturnOutputTypeFileArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyVideoDBAndReturnOutputTypeFileArgs({
    this.select,
    this.include,
  });

  final _i2.FileDBSelect? select;

  final _i2.FileDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyVideoDBAndReturnOutputTypePreviewArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyVideoDBAndReturnOutputTypePreviewArgs({
    this.select,
    this.include,
  });

  final _i2.ImageDBSelect? select;

  final _i2.ImageDBInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyVideoDBAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyVideoDBAndReturnOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.file,
    this.preview,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  final _i1.PrismaUnion<bool, _i2.CreateManyVideoDBAndReturnOutputTypeFileArgs>?
      file;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyVideoDBAndReturnOutputTypePreviewArgs>?
      preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        'file': file,
        'preview': preview,
      };
}

class CreateManyVideoDBAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyVideoDBAndReturnOutputTypeInclude({
    this.file,
    this.preview,
  });

  final _i1.PrismaUnion<bool, _i2.CreateManyVideoDBAndReturnOutputTypeFileArgs>?
      file;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyVideoDBAndReturnOutputTypePreviewArgs>?
      preview;

  @override
  Map<String, dynamic> toJson() => {
        'file': file,
        'preview': preview,
      };
}

class VideoDBUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.file,
    this.preview,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.FileDBUpdateOneRequiredWithoutVideoNestedInput? file;

  final _i2.ImageDBUpdateOneRequiredWithoutVideoNestedInput? preview;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'file': file,
        'preview': preview,
      };
}

class VideoDBUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUpdateManyMutationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class VideoDBUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBUncheckedUpdateManyInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? fileId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBCountAggregateOutputType {
  const VideoDBCountAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.$all,
  });

  factory VideoDBCountAggregateOutputType.fromJson(Map json) =>
      VideoDBCountAggregateOutputType(
        id: json['id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        fileId: json['fileId'],
        previewId: json['previewId'],
        $all: json['_all'],
      );

  final int? id;

  final int? createdAt;

  final int? updatedAt;

  final int? fileId;

  final int? previewId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        '_all': $all,
      };
}

class VideoDBMinAggregateOutputType {
  const VideoDBMinAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  factory VideoDBMinAggregateOutputType.fromJson(Map json) =>
      VideoDBMinAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        fileId: json['fileId'],
        previewId: json['previewId'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? fileId;

  final String? previewId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBMaxAggregateOutputType {
  const VideoDBMaxAggregateOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  factory VideoDBMaxAggregateOutputType.fromJson(Map json) =>
      VideoDBMaxAggregateOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        fileId: json['fileId'],
        previewId: json['previewId'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? fileId;

  final String? previewId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBGroupByOutputType {
  const VideoDBGroupByOutputType({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory VideoDBGroupByOutputType.fromJson(Map json) =>
      VideoDBGroupByOutputType(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        fileId: json['fileId'],
        previewId: json['previewId'],
        $count: json['_count'] is Map
            ? _i2.VideoDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.VideoDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.VideoDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? fileId;

  final String? previewId;

  final _i2.VideoDBCountAggregateOutputType? $count;

  final _i2.VideoDBMinAggregateOutputType? $min;

  final _i2.VideoDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'fileId': fileId,
        'previewId': previewId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class VideoDBCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCountOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? fileId;

  final _i2.SortOrder? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBMaxOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? fileId;

  final _i2.SortOrder? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBMinOrderByAggregateInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? fileId;

  final _i2.SortOrder? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBOrderByWithAggregationInput({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? fileId;

  final _i2.SortOrder? previewId;

  final _i2.VideoDBCountOrderByAggregateInput? $count;

  final _i2.VideoDBMaxOrderByAggregateInput? $max;

  final _i2.VideoDBMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class VideoDBScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final _i1.PrismaUnion<_i2.VideoDBScalarWhereWithAggregatesInput,
      Iterable<_i2.VideoDBScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.VideoDBScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.VideoDBScalarWhereWithAggregatesInput,
      Iterable<_i2.VideoDBScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? fileId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBCountAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.$all,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        '_all': $all,
      };
}

class VideoDBGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBGroupByOutputTypeCountArgs({this.select});

  final _i2.VideoDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VideoDBMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBMinAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBGroupByOutputTypeMinArgs({this.select});

  final _i2.VideoDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VideoDBMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBMaxAggregateOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
      };
}

class VideoDBGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBGroupByOutputTypeMaxArgs({this.select});

  final _i2.VideoDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VideoDBGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VideoDBGroupByOutputTypeSelect({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.fileId,
    this.previewId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? fileId;

  final bool? previewId;

  final _i1.PrismaUnion<bool, _i2.VideoDBGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.VideoDBGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.VideoDBGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fileId': fileId,
        'previewId': previewId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateVideoDB {
  const AggregateVideoDB({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateVideoDB.fromJson(Map json) => AggregateVideoDB(
        $count: json['_count'] is Map
            ? _i2.VideoDBCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.VideoDBMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.VideoDBMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.VideoDBCountAggregateOutputType? $count;

  final _i2.VideoDBMinAggregateOutputType? $min;

  final _i2.VideoDBMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateVideoDBCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVideoDBCountArgs({this.select});

  final _i2.VideoDBCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVideoDBMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVideoDBMinArgs({this.select});

  final _i2.VideoDBMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVideoDBMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVideoDBMaxArgs({this.select});

  final _i2.VideoDBMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVideoDBSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVideoDBSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateVideoDBCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateVideoDBMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateVideoDBMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
