// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCourseModelCollection on Isar {
  IsarCollection<CourseModel> get courseModels => this.collection();
}

const CourseModelSchema = CollectionSchema(
  name: r'CourseModel',
  id: 414938306419406862,
  properties: {
    r'courseName': PropertySchema(
      id: 0,
      name: r'courseName',
      type: IsarType.string,
    )
  },
  estimateSize: _courseModelEstimateSize,
  serialize: _courseModelSerialize,
  deserialize: _courseModelDeserialize,
  deserializeProp: _courseModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'courseName': IndexSchema(
      id: -1503113066792696319,
      name: r'courseName',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'courseName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'teachers': LinkSchema(
      id: 2972146125542238697,
      name: r'teachers',
      target: r'TeacherModel',
      single: true,
    ),
    r'students': LinkSchema(
      id: -4907661906599051594,
      name: r'students',
      target: r'StudentModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _courseModelGetId,
  getLinks: _courseModelGetLinks,
  attach: _courseModelAttach,
  version: '3.1.0+1',
);

int _courseModelEstimateSize(
  CourseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.courseName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _courseModelSerialize(
  CourseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.courseName);
}

CourseModel _courseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CourseModel(
    courseName: reader.readStringOrNull(offsets[0]),
    id: id,
  );
  return object;
}

P _courseModelDeserializeProp<P>(
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

Id _courseModelGetId(CourseModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _courseModelGetLinks(CourseModel object) {
  return [object.teachers, object.students];
}

void _courseModelAttach(
    IsarCollection<dynamic> col, Id id, CourseModel object) {
  object.id = id;
  object.teachers
      .attach(col, col.isar.collection<TeacherModel>(), r'teachers', id);
  object.students
      .attach(col, col.isar.collection<StudentModel>(), r'students', id);
}

extension CourseModelByIndex on IsarCollection<CourseModel> {
  Future<CourseModel?> getByCourseName(String? courseName) {
    return getByIndex(r'courseName', [courseName]);
  }

  CourseModel? getByCourseNameSync(String? courseName) {
    return getByIndexSync(r'courseName', [courseName]);
  }

  Future<bool> deleteByCourseName(String? courseName) {
    return deleteByIndex(r'courseName', [courseName]);
  }

  bool deleteByCourseNameSync(String? courseName) {
    return deleteByIndexSync(r'courseName', [courseName]);
  }

  Future<List<CourseModel?>> getAllByCourseName(
      List<String?> courseNameValues) {
    final values = courseNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'courseName', values);
  }

  List<CourseModel?> getAllByCourseNameSync(List<String?> courseNameValues) {
    final values = courseNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'courseName', values);
  }

  Future<int> deleteAllByCourseName(List<String?> courseNameValues) {
    final values = courseNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'courseName', values);
  }

  int deleteAllByCourseNameSync(List<String?> courseNameValues) {
    final values = courseNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'courseName', values);
  }

  Future<Id> putByCourseName(CourseModel object) {
    return putByIndex(r'courseName', object);
  }

  Id putByCourseNameSync(CourseModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'courseName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCourseName(List<CourseModel> objects) {
    return putAllByIndex(r'courseName', objects);
  }

  List<Id> putAllByCourseNameSync(List<CourseModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'courseName', objects, saveLinks: saveLinks);
  }
}

extension CourseModelQueryWhereSort
    on QueryBuilder<CourseModel, CourseModel, QWhere> {
  QueryBuilder<CourseModel, CourseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CourseModelQueryWhere
    on QueryBuilder<CourseModel, CourseModel, QWhereClause> {
  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> courseNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'courseName',
        value: [null],
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause>
      courseNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'courseName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause> courseNameEqualTo(
      String? courseName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'courseName',
        value: [courseName],
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterWhereClause>
      courseNameNotEqualTo(String? courseName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'courseName',
              lower: [],
              upper: [courseName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'courseName',
              lower: [courseName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'courseName',
              lower: [courseName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'courseName',
              lower: [],
              upper: [courseName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CourseModelQueryFilter
    on QueryBuilder<CourseModel, CourseModel, QFilterCondition> {
  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'courseName',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'courseName',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'courseName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'courseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'courseName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'courseName',
        value: '',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      courseNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'courseName',
        value: '',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> idBetween(
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

extension CourseModelQueryObject
    on QueryBuilder<CourseModel, CourseModel, QFilterCondition> {}

extension CourseModelQueryLinks
    on QueryBuilder<CourseModel, CourseModel, QFilterCondition> {
  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> teachers(
      FilterQuery<TeacherModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'teachers');
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      teachersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'teachers', 0, true, 0, true);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition> students(
      FilterQuery<StudentModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'students');
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', length, true, length, true);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, true, 0, true);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, false, 999999, true);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, true, length, include);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', length, include, 999999, true);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterFilterCondition>
      studentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'students', lower, includeLower, upper, includeUpper);
    });
  }
}

extension CourseModelQuerySortBy
    on QueryBuilder<CourseModel, CourseModel, QSortBy> {
  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> sortByCourseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courseName', Sort.asc);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> sortByCourseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courseName', Sort.desc);
    });
  }
}

extension CourseModelQuerySortThenBy
    on QueryBuilder<CourseModel, CourseModel, QSortThenBy> {
  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> thenByCourseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courseName', Sort.asc);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> thenByCourseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courseName', Sort.desc);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CourseModel, CourseModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CourseModelQueryWhereDistinct
    on QueryBuilder<CourseModel, CourseModel, QDistinct> {
  QueryBuilder<CourseModel, CourseModel, QDistinct> distinctByCourseName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'courseName', caseSensitive: caseSensitive);
    });
  }
}

extension CourseModelQueryProperty
    on QueryBuilder<CourseModel, CourseModel, QQueryProperty> {
  QueryBuilder<CourseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CourseModel, String?, QQueryOperations> courseNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'courseName');
    });
  }
}
