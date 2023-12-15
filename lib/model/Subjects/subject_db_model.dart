import 'package:isar/isar.dart';
part 'subject_db_model.g.dart';
@collection
class SubjectModel {
  Id? id = Isar.autoIncrement;
  final String? subjectName;
  SubjectModel({required this.id, required this.subjectName});
}
