import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/facultyalldetails_db_model.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final facalldetailapiProvider =
    Provider<AllFacultyDetailsServices>((ref) => AllFacultyDetailsServices());

class AllFacultyDetailsServices {
  static Future<void> addFaculty(
      {required FacultyAllDetailModel fac, required SubjectModel sub}) async {
    try {
      fac.subjects.add(sub);
      await isar.writeTxn(() async {
        await isar.facultyAllDetailModels.put(fac);
        await isar.subjectModels.put(sub);
        await fac.subjects.save();
      });
    } catch (e) {
      print("error while creating faculty $e");
    }
  }

  Stream<List<FacultyAllDetailModel>> getStream() async* {
    yield* isar.facultyAllDetailModels.where().watch(fireImmediately: true);
  }
}
