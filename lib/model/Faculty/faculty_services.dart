import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final facapiProvider = Provider<FacultyServices>((ref) => FacultyServices());

@riverpod
class FacultyServices {
  static Future createFaculty({
    required CourseModel fac,
  }) async {
    try {
      await isar.writeTxn(() => isar.courseModels.put(fac));
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

  static Future editFaculty({required CourseModel fa}) async {
    try {
      await isar.writeTxn(() => isar.courseModels.put(fa));
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

  Future<List<CourseModel>> getAllFaculties() async {
    return await isar.courseModels.where().findAll();
  }

  Stream<List<CourseModel>> getStream() async* {
    yield* isar.courseModels.where().watch(fireImmediately: true);
  }

  Future<void> deleteFaculty({required CourseModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.courseModels.delete(model.id!);
      });
    } catch (e) {
      rethrow;
    }
  }
}
