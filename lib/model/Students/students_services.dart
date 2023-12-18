import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final stdProvider = Provider<StudentsServices>((ref) => StudentsServices());

class StudentsServices {
  static Future addStudents({required StudentModel sm}) async {
    try {
      await isar.writeTxn(() => isar.studentModels.put(sm));
    } catch (e) {
      print("error while creating students $e");
    }
  }

  Stream<List<StudentModel>> listenStudents() async* {
    yield* isar.studentModels.where().watch(fireImmediately: true);
  }

  Future<List<StudentModel>?> getAllStudents() async {
    try {
      print("get called");
      print("dddd ${await isar.studentModels.where().findAll()}");
      return await isar.studentModels.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteStd({required StudentModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.studentModels.delete(model.id!);
      });
    } catch (e) {
      rethrow;
    }
  }


}
