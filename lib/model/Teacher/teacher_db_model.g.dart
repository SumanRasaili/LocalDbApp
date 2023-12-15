// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTeacherModelCollection on Isar {
  IsarCollection<TeacherModel> get teacherModels => this.collection();
}

const TeacherModelSchema = CollectionSchema(
  name: r'TeacherModel',
  id: -1057485722275861762,
  properties: {
    r'teacherName': PropertySchema(
      id: 0,
      name: r'teacherName',
      type: IsarType.string,
    )
  },
  estimateSize: _teacherModelEstimateSize,
  serialize: _teacherModelSerialize,
  deserialize: _teacherModelDeserialize,
  deserializeProp: _teacherModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _teacherModelGetId,
  getLinks: _teacherModelGetLinks,
  attach: _teacherModelAttach,
  version: '3.1.0+1',
);

int _teacherModelEstimateSize(
  TeacherModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.teacherName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _teacherModelSerialize(
  TeacherModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.teacherName);
}

TeacherModel _teacherModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TeacherModel(
    id: id,
    teacherName: reader.readStringOrNull(offsets[0]),
  );
  return object;
}

P _teacherModelDeserializeProp<P>(
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

Id _teacherModelGetId(TeacherModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _teacherModelGetLinks(TeacherModel object) {
  return [];
}

void _teacherModelAttach(
    IsarCollection<dynamic> col, Id id, TeacherModel object) {
  object.id = id;
}

extension TeacherModelQueryWhereSort
    on QueryBuilder<TeacherModel, TeacherModel, QWhere> {
  QueryBuilder<TeacherModel, TeacherModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TeacherModelQueryWhere
    on QueryBuilder<TeacherModel, TeacherModel, QWhereClause> {
  QueryBuilder<TeacherModel, TeacherModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TeacherModel, TeacherModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterWhereClause> idBetween(
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
}

extension TeacherModelQueryFilter
    on QueryBuilder<TeacherModel, TeacherModel, QFilterCondition> {
  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teacherName',
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teacherName',
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teacherName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teacherName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teacherName',
        value: '',
      ));
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterFilterCondition>
      teacherNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teacherName',
        value: '',
      ));
    });
  }
}

extension TeacherModelQueryObject
    on QueryBuilder<TeacherModel, TeacherModel, QFilterCondition> {}

extension TeacherModelQueryLinks
    on QueryBuilder<TeacherModel, TeacherModel, QFilterCondition> {}

extension TeacherModelQuerySortBy
    on QueryBuilder<TeacherModel, TeacherModel, QSortBy> {
  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy> sortByTeacherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.asc);
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy>
      sortByTeacherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.desc);
    });
  }
}

extension TeacherModelQuerySortThenBy
    on QueryBuilder<TeacherModel, TeacherModel, QSortThenBy> {
  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy> thenByTeacherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.asc);
    });
  }

  QueryBuilder<TeacherModel, TeacherModel, QAfterSortBy>
      thenByTeacherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.desc);
    });
  }
}

extension TeacherModelQueryWhereDistinct
    on QueryBuilder<TeacherModel, TeacherModel, QDistinct> {
  QueryBuilder<TeacherModel, TeacherModel, QDistinct> distinctByTeacherName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teacherName', caseSensitive: caseSensitive);
    });
  }
}

extension TeacherModelQueryProperty
    on QueryBuilder<TeacherModel, TeacherModel, QQueryProperty> {
  QueryBuilder<TeacherModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TeacherModel, String?, QQueryOperations> teacherNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teacherName');
    });
  }
}
