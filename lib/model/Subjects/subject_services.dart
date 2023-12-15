import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';

class SubjectServices {
  static Future addSubjects({required SubjectModel subj}) async {
    try {
      await isar.writeTxn(() => isar.subjectModels.put(subj));
    } catch (e) {
      print("error while creating subjects is  $e");
    }
  }
}
