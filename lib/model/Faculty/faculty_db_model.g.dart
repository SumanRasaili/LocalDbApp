// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFacultyModelCollection on Isar {
  IsarCollection<FacultyModel> get facultyModels => this.collection();
}

const FacultyModelSchema = CollectionSchema(
  name: r'FacultyModel',
  id: -6302961449486729081,
  properties: {
    r'facultyName': PropertySchema(
      id: 0,
      name: r'facultyName',
      type: IsarType.string,
    )
  },
  estimateSize: _facultyModelEstimateSize,
  serialize: _facultyModelSerialize,
  deserialize: _facultyModelDeserialize,
  deserializeProp: _facultyModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'facultyName': IndexSchema(
      id: -2783939385663226620,
      name: r'facultyName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'facultyName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _facultyModelGetId,
  getLinks: _facultyModelGetLinks,
  attach: _facultyModelAttach,
  version: '3.1.0+1',
);

int _facultyModelEstimateSize(
  FacultyModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.facultyName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _facultyModelSerialize(
  FacultyModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.facultyName);
}

FacultyModel _facultyModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FacultyModel(
    facultyName: reader.readStringOrNull(offsets[0]),
    id: id,
  );
  return object;
}

P _facultyModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _facultyModelGetId(FacultyModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _facultyModelGetLinks(FacultyModel object) {
  return [];
}

void _facultyModelAttach(
    IsarCollection<dynamic> col, Id id, FacultyModel object) {
  object.id = id;
}

extension FacultyModelByIndex on IsarCollection<FacultyModel> {
  Future<FacultyModel?> getByFacultyName(String? facultyName) {
    return getByIndex(r'facultyName', [facultyName]);
  }

  FacultyModel? getByFacultyNameSync(String? facultyName) {
    return getByIndexSync(r'facultyName', [facultyName]);
  }

  Future<bool> deleteByFacultyName(String? facultyName) {
    return deleteByIndex(r'facultyName', [facultyName]);
  }

  bool deleteByFacultyNameSync(String? facultyName) {
    return deleteByIndexSync(r'facultyName', [facultyName]);
  }

  Future<List<FacultyModel?>> getAllByFacultyName(
      List<String?> facultyNameValues) {
    final values = facultyNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'facultyName', values);
  }

  List<FacultyModel?> getAllByFacultyNameSync(List<String?> facultyNameValues) {
    final values = facultyNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'facultyName', values);
  }

  Future<int> deleteAllByFacultyName(List<String?> facultyNameValues) {
    final values = facultyNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'facultyName', values);
  }

  int deleteAllByFacultyNameSync(List<String?> facultyNameValues) {
    final values = facultyNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'facultyName', values);
  }

  Future<Id> putByFacultyName(FacultyModel object) {
    return putByIndex(r'facultyName', object);
  }

  Id putByFacultyNameSync(FacultyModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'facultyName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFacultyName(List<FacultyModel> objects) {
    return putAllByIndex(r'facultyName', objects);
  }

  List<Id> putAllByFacultyNameSync(List<FacultyModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'facultyName', objects, saveLinks: saveLinks);
  }
}

extension FacultyModelQueryWhereSort
    on QueryBuilder<FacultyModel, FacultyModel, QWhere> {
  QueryBuilder<FacultyModel, FacultyModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FacultyModelQueryWhere
    on QueryBuilder<FacultyModel, FacultyModel, QWhereClause> {
  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause>
      facultyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'facultyName',
        value: [null],
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause>
      facultyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'facultyName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause>
      facultyNameEqualTo(String? facultyName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'facultyName',
        value: [facultyName],
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterWhereClause>
      facultyNameNotEqualTo(String? facultyName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'facultyName',
              lower: [],
              upper: [facultyName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'facultyName',
              lower: [facultyName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'facultyName',
              lower: [facultyName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'facultyName',
              lower: [],
              upper: [facultyName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension FacultyModelQueryFilter
    on QueryBuilder<FacultyModel, FacultyModel, QFilterCondition> {
  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'facultyName',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'facultyName',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'facultyName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'facultyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facultyName',
        value: '',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      facultyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'facultyName',
        value: '',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FacultyModel, FacultyModel, QAfterFilterCondition> idBetween(
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
}

extension FacultyModelQueryObject
    on QueryBuilder<FacultyModel, FacultyModel, QFilterCondition> {}

extension FacultyModelQueryLinks
    on QueryBuilder<FacultyModel, FacultyModel, QFilterCondition> {}

extension FacultyModelQuerySortBy
    on QueryBuilder<FacultyModel, FacultyModel, QSortBy> {
  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy> sortByFacultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.asc);
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy>
      sortByFacultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.desc);
    });
  }
}

extension FacultyModelQuerySortThenBy
    on QueryBuilder<FacultyModel, FacultyModel, QSortThenBy> {
  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy> thenByFacultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.asc);
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy>
      thenByFacultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.desc);
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FacultyModel, FacultyModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FacultyModelQueryWhereDistinct
    on QueryBuilder<FacultyModel, FacultyModel, QDistinct> {
  QueryBuilder<FacultyModel, FacultyModel, QDistinct> distinctByFacultyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'facultyName', caseSensitive: caseSensitive);
    });
  }
}

extension FacultyModelQueryProperty
    on QueryBuilder<FacultyModel, FacultyModel, QQueryProperty> {
  QueryBuilder<FacultyModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FacultyModel, String?, QQueryOperations> facultyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'facultyName');
    });
  }
}
