import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/facultyalldetails_db_model.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final facapiProvider = Provider<FacultyServices>((ref) => FacultyServices());

@riverpod
class FacultyServices {
  static Future createFaculty({
    required FacultyModel fac,
  }) async {
    try {
      await isar.writeTxn(() => isar.facultyModels.put(fac));
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

 

  static Future editFaculty({required FacultyModel fa}) async {
    try {
      await isar.writeTxn(() => isar.facultyModels.put(fa));
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

  Future<List<FacultyModel>> getAllFaculties() async {
    return await isar.facultyModels.where().findAll();
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
