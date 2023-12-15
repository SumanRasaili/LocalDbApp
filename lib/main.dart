import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:firestoreapp/screens/splash_page.dart';
import 'package:firestoreapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

late Isar isar;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open([
    FacultyModelSchema,
    SubjectModelSchema,
    StudentModelSchema,
    TeacherModelSchema
  ], directory: dir.path, inspector: true);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          // brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            primary: AppColors.appArrowColor,
            seedColor: AppColors.appArrowColor,
          )
          // primaryColor: AppColors.black2cColor,
          ),
      home: const SplashPage(),
    );
  }
}
