import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:isar/isar.dart';

part 'faculty_db_model.g.dart';

@collection
class CourseModel {
  Id? id = Isar.autoIncrement;
  @Index(unique: true)
  final String? courseName;
  final teachers = IsarLink<TeacherModel>();
  final students = IsarLinks<StudentModel>();
  CourseModel({
    this.id,
    required this.courseName,
  });
}
