import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';

class TeacherServices {
  static Future addTeacher({required TeacherModel teach}) async {
    try {
      await isar.writeTxn(() =>  isar.teacherModels.put(teach));
    } catch (e) {
      print("error while creating teacher $e");
    }
  }
}
