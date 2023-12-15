import 'package:isar/isar.dart';

part 'faculty_db_model.g.dart';

@collection
class FacultyModel {
  Id? id = Isar.autoIncrement;
  final String? facultyName;
  FacultyModel({required this.id, required this.facultyName});
}
