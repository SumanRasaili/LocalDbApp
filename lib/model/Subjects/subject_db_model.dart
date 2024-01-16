import 'package:isar/isar.dart';

part 'subject_db_model.g.dart';

@collection
class SubjectModel {
  Id? id = Isar.autoIncrement;
 final  String? facultyId;
  @Index(unique: true)
  final String? subjectName;
  SubjectModel({
    this.id,
    required this.subjectName,
    required this.facultyId,
  });
}
