import 'package:isar/isar.dart';
part 'students_db_model.g.dart';
@collection
class StudentModel {
  Id? id = Isar.autoIncrement;
  final String? studentName;
  StudentModel({required this.id, required this.studentName});
}
