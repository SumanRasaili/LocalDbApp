import 'package:isar/isar.dart';

part 'faculty_db_model.g.dart';

@collection
class FacultyModel {
  Id? id = Isar.autoIncrement;
  @Index(unique: true)
  final String? facultyName;
  FacultyModel({
    this.id,
    required this.facultyName,
  });
}
