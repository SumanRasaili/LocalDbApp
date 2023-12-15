import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final facapiProvider = Provider<FacultyServices>((ref) => FacultyServices());
final facDataProvider = FutureProvider<List<FacultyModel>?>(
    (ref) => ref.read(facapiProvider).getAllFaculties());

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
      return await isar.facultyModels.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteFaculty({required FacultyModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.facultyModels.delete(model.id!);
      });
      getAllFaculties();
    } catch (e) {
      rethrow;
    }
  }
}
