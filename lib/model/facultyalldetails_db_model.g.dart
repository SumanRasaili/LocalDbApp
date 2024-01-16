// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facultyalldetails_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFacultyAllDetailModelCollection on Isar {
  IsarCollection<FacultyAllDetailModel> get facultyAllDetailModels =>
      this.collection();
}

const FacultyAllDetailModelSchema = CollectionSchema(
  name: r'FacultyAllDetailModel',
  id: -277489808276432077,
  properties: {
    r'facultyName': PropertySchema(
      id: 0,
      name: r'facultyName',
      type: IsarType.string,
    )
  },
  estimateSize: _facultyAllDetailModelEstimateSize,
  serialize: _facultyAllDetailModelSerialize,
  deserialize: _facultyAllDetailModelDeserialize,
  deserializeProp: _facultyAllDetailModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'subjects': LinkSchema(
      id: -17335742382558870,
      name: r'subjects',
      target: r'SubjectModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _facultyAllDetailModelGetId,
  getLinks: _facultyAllDetailModelGetLinks,
  attach: _facultyAllDetailModelAttach,
  version: '3.1.0+1',
);

int _facultyAllDetailModelEstimateSize(
  FacultyAllDetailModel object,
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

void _facultyAllDetailModelSerialize(
  FacultyAllDetailModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.facultyName);
}

FacultyAllDetailModel _facultyAllDetailModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FacultyAllDetailModel(
    facultyName: reader.readStringOrNull(offsets[0]),
    id: id,
  );
  return object;
}

P _facultyAllDetailModelDeserializeProp<P>(
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

Id _facultyAllDetailModelGetId(FacultyAllDetailModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _facultyAllDetailModelGetLinks(
    FacultyAllDetailModel object) {
  return [object.subjects];
}

void _facultyAllDetailModelAttach(
    IsarCollection<dynamic> col, Id id, FacultyAllDetailModel object) {
  object.id = id;
  object.subjects
      .attach(col, col.isar.collection<SubjectModel>(), r'subjects', id);
}

extension FacultyAllDetailModelQueryWhereSort
    on QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QWhere> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FacultyAllDetailModelQueryWhere on QueryBuilder<FacultyAllDetailModel,
    FacultyAllDetailModel, QWhereClause> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterWhereClause>
      idBetween(
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

extension FacultyAllDetailModelQueryFilter on QueryBuilder<
    FacultyAllDetailModel, FacultyAllDetailModel, QFilterCondition> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'facultyName',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'facultyName',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameEqualTo(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameGreaterThan(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameLessThan(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameBetween(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameStartsWith(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameEndsWith(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
          QAfterFilterCondition>
      facultyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'facultyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
          QAfterFilterCondition>
      facultyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'facultyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'facultyName',
        value: '',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> facultyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'facultyName',
        value: '',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> idBetween(
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

extension FacultyAllDetailModelQueryObject on QueryBuilder<
    FacultyAllDetailModel, FacultyAllDetailModel, QFilterCondition> {}

extension FacultyAllDetailModelQueryLinks on QueryBuilder<FacultyAllDetailModel,
    FacultyAllDetailModel, QFilterCondition> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjects(FilterQuery<SubjectModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'subjects');
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subjects', length, true, length, true);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subjects', 0, true, 0, true);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subjects', 0, false, 999999, true);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subjects', 0, true, length, include);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subjects', length, include, 999999, true);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel,
      QAfterFilterCondition> subjectsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'subjects', lower, includeLower, upper, includeUpper);
    });
  }
}

extension FacultyAllDetailModelQuerySortBy
    on QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QSortBy> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      sortByFacultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.asc);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      sortByFacultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.desc);
    });
  }
}

extension FacultyAllDetailModelQuerySortThenBy
    on QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QSortThenBy> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      thenByFacultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.asc);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      thenByFacultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'facultyName', Sort.desc);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FacultyAllDetailModelQueryWhereDistinct
    on QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QDistinct> {
  QueryBuilder<FacultyAllDetailModel, FacultyAllDetailModel, QDistinct>
      distinctByFacultyName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'facultyName', caseSensitive: caseSensitive);
    });
  }
}

extension FacultyAllDetailModelQueryProperty on QueryBuilder<
    FacultyAllDetailModel, FacultyAllDetailModel, QQueryProperty> {
  QueryBuilder<FacultyAllDetailModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FacultyAllDetailModel, String?, QQueryOperations>
      facultyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'facultyName');
    });
  }
}
