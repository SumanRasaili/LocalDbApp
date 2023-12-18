import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final subProvider = Provider<SubjectServices>((ref) => SubjectServices());

class SubjectServices {
  static Future addSubjects({required SubjectModel subj}) async {
    try {
      await isar.writeTxn(() => isar.subjectModels.put(subj));
    } catch (e) {
      print("error while creating subjects is  $e");
    }
  }

  Stream<List<SubjectModel>> listenSubjects() async* {
    yield* isar.subjectModels.where().watch(fireImmediately: true);
  }

  Future<List<SubjectModel>?> getAllSubjects() async {
    try {
      print("get called");
      print("dddd ${await isar.subjectModels.where().findAll()}");
      return await isar.subjectModels.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteSub({required SubjectModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.subjectModels.delete(model.id!);
      });
    } catch (e) {
      rethrow;
    }
  }
}
