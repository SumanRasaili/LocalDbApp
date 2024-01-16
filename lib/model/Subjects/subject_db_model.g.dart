// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSubjectModelCollection on Isar {
  IsarCollection<SubjectModel> get subjectModels => this.collection();
}

const SubjectModelSchema = CollectionSchema(
  name: r'SubjectModel',
  id: 5276353613396957069,
  properties: {
    r'facultyId': PropertySchema(
      id: 0,
      name: r'facultyId',
      type: IsarType.string,
    ),
    r'subjectName': PropertySchema(
      id: 1,
      name: r'subjectName',
      type: IsarType.string,
    )
  },
  estimateSize: _subjectModelEstimateSize,
  serialize: _subjectModelSerialize,
  deserialize: _subjectModelDeserialize,
  deserializeProp: _subjectModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'subjectName': IndexSchema(
      id: -2702852998942163311,
      name: r'subjectName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'subjectName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _subjectModelGetId,
  getLinks: _subjectModelGetLinks,
  attach: _subjectModelAttach,
  version: '3.1.0+1',
);

int _subjectModelEstimateSize(
  SubjectModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.facultyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subjectName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _subjectModelSerialize(
  SubjectModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.facultyId);
  writer.writeString(offsets[1], object.subjectName);
}

SubjectModel _subjectModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SubjectModel(
    facultyId: reader.readStringOrNull(offsets[0]),
    id: id,
    subjectName: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _subjectModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _subjectModelGetId(SubjectModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _subjectModelGetLinks(SubjectModel object) {
  return [];
}

void _subjectModelAttach(
    IsarCollection<dynamic> col, Id id, SubjectModel object) {
  object.id = id;
}

extension SubjectModelByIndex on IsarCollection<SubjectModel> {
  Future<SubjectModel?> getBySubjectName(String? subjectName) {
    return getByIndex(r'subjectName', [subjectName]);
  }

  SubjectModel? getBySubjectNameSync(String? subjectName) {
    return getByIndexSync(r'subjectName', [subjectName]);
  }

  Future<bool> deleteBySubjectName(String? subjectName) {
    return deleteByIndex(r'subjectName', [subjectName]);
  }

  bool deleteBySubjectNameSync(String? subjectName) {
    return deleteByIndexSync(r'subjectName', [subjectName]);
  }

  Future<List<SubjectModel?>> getAllBySubjectName(
      List<String?> subjectNameValues) {
    final values = subjectNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'subjectName', values);
  }

  List<SubjectModel?> getAllBySubjectNameSync(List<String?> subjectNameValues) {
    final values = subjectNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'subjectName', values);
  }

  Future<int> deleteAllBySubjectName(List<String?> subjectNameValues) {
    final values = subjectNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'subjectName', values);
  }

  int deleteAllBySubjectNameSync(List<String?> subjectNameValues) {
    final values = subjectNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'subjectName', values);
  }

  Future<Id> putBySubjectName(SubjectModel object) {
    return putByIndex(r'subjectName', object);
  }

  Id putBySubjectNameSync(SubjectModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'subjectName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySubjectName(List<SubjectModel> objects) {
    return putAllByIndex(r'subjectName', objects);
  }

  List<Id> putAllBySubjectNameSync(List<SubjectModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'subjectName', objects, saveLinks: saveLinks);
  }
}

extension SubjectModelQueryWhereSort
    on QueryBuilder<SubjectModel, SubjectModel, QWhere> {
  QueryBuilder<SubjectModel, SubjectModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SubjectModelQueryWhere
    on QueryBuilder<SubjectModel, SubjectModel, QWhereClause> {
  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause>
      subjectNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'subjectName',
        value: [null],
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause>
      subjectNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'subjectName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause>
      subjectNameEqualTo(String? subjectName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'subjectName',
        value: [subjectName],
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterWhereClause>
      subjectNameNotEqualTo(String? subjectName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'subjectName',
              lower: [],
              upper: [subjectName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'subjectName',
              lower: [subjectName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'subjectName',
              lower: [subjectName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'subjectName',
              lower: [],
              upper: [subjectName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SubjectModelQueryFilter
    on QueryBuilder<SubjectModel, SubjectModel, QFilterCondition> {
  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'facultyId',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'facultyId',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'facultyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'facultyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'facultyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facultyId',
        value: '',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      facultyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'facultyId',
        value: '',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subjectName',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subjectName',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subjectName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subjectName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subjectName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectName',
        value: '',
      ));
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterFilterCondition>
      subjectNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subjectName',
        value: '',
      ));
    });
  }
}

extension SubjectModelQueryObject
    on QueryBuilder<SubjectModel, SubjectModel, QFilterCondition> {}

extension SubjectModelQueryLinks
    on QueryBuilder<SubjectModel, SubjectModel, QFilterCondition> {}

extension SubjectModelQuerySortBy
    on QueryBuilder<SubjectModel, SubjectModel, QSortBy> {
  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> sortByFacultyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyId', Sort.asc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> sortByFacultyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyId', Sort.desc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> sortBySubjectName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.asc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy>
      sortBySubjectNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.desc);
    });
  }
}

extension SubjectModelQuerySortThenBy
    on QueryBuilder<SubjectModel, SubjectModel, QSortThenBy> {
  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> thenByFacultyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyId', Sort.asc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> thenByFacultyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyId', Sort.desc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy> thenBySubjectName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.asc);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QAfterSortBy>
      thenBySubjectNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectName', Sort.desc);
    });
  }
}

extension SubjectModelQueryWhereDistinct
    on QueryBuilder<SubjectModel, SubjectModel, QDistinct> {
  QueryBuilder<SubjectModel, SubjectModel, QDistinct> distinctByFacultyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'facultyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SubjectModel, SubjectModel, QDistinct> distinctBySubjectName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subjectName', caseSensitive: caseSensitive);
    });
  }
}

extension SubjectModelQueryProperty
    on QueryBuilder<SubjectModel, SubjectModel, QQueryProperty> {
  QueryBuilder<SubjectModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SubjectModel, String?, QQueryOperations> facultyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'facultyId');
    });
  }

  QueryBuilder<SubjectModel, String?, QQueryOperations> subjectNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subjectName');
    });
  }
}
