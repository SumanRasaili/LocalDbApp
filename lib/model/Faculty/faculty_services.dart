import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final facapiProvider = Provider<FacultyServices>((ref) => FacultyServices());

@riverpod
class FacultyServices {
  static Future addFaculty({required FacultyModel fac}) async {
    try {
      await isar.writeTxn(() => isar.facultyModels.put(fac));
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

  Future<List<FacultyModel>?> getAllFaculties() async {
    try {
      print("get called");
      print("dddd ${await isar.facultyModels.where().findAll()}");
      return await isar.facultyModels.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<FacultyModel>> getStream() async* {
    yield* isar.facultyModels.where().watch(fireImmediately: true);
  }

  Future<void> deleteFaculty({required FacultyModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.facultyModels.delete(model.id!);
      });
    } catch (e) {
      rethrow;
    }
  }
}
