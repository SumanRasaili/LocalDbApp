import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Students/students_db_model.dart';

class StudentsServices {
  static Future addStudents({required StudentModel sm}) async {
    try {
      await isar.writeTxn(() =>  isar.studentModels.put(sm));
    } catch (e) {
      print("error while creating students $e");
    }
  }
}
