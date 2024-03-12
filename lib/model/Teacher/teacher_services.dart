import 'package:firestoreapp/main.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final teachProv = Provider<TeacherServices>((ref) {
  return TeacherServices();
});

class TeacherServices {
  static Future addTeacher(
      {required TeacherModel teach, required CourseModel course}) async {
    try {
      course.teachers.value = teach;
      await isar.writeTxn(() async {
        await isar.teacherModels.put(teach);
        await isar.courseModels.put(course);
        await course.teachers.save();
      });
    } catch (e) {
      print("error while creating teacher $e");
    }
  }

  Stream<List<TeacherModel>> listenTeachers() async* {
    yield* isar.teacherModels.where().watch(fireImmediately: true);
  }

  Future<List<TeacherModel>> getAllTeachers() async {
    try {
      print("get called");
      print("dddd ${await isar.teacherModels.where().findAll()}");
      return await isar.teacherModels.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteteach({required TeacherModel model}) async {
    try {
      print("deleted");
      await isar.writeTxn(() {
        return isar.teacherModels.delete(model.id!);
      });
    } catch (e) {
      rethrow;
    }
  }
}
