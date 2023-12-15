import 'package:isar/isar.dart';
part 'teacher_db_model.g.dart';
@collection
class TeacherModel {
  Id? id = Isar.autoIncrement;
  final String? teacherName;
  TeacherModel({required this.id, required this.teacherName});
}