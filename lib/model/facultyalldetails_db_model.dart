import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:isar/isar.dart';

part 'facultyalldetails_db_model.g.dart';

@collection
class FacultyAllDetailModel {
  Id? id;
  final String? facultyName;
  final subjects = IsarLinks<SubjectModel>();
  FacultyAllDetailModel({
    this.id,
    required this.facultyName,
  });
}
