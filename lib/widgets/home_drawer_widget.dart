import 'package:firestoreapp/screens/add_faculty.dart';
import 'package:firestoreapp/screens/add_students.dart';
import 'package:firestoreapp/screens/add_teacher_screen.dart';
import 'package:firestoreapp/screens/all_faculty_screen.dart';
import 'package:firestoreapp/screens/all_students_page.dart';
import 'package:firestoreapp/screens/all_teachers.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerButtons(
                  name: "Add Courses",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AddFacultyPage();
                        },
                      ),
                    );
                  }),
              DrawerButtons(
                  name: "Add Teacher",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AddTeachersPage();
                        },
                      ),
                    );
                  }),
              DrawerButtons(
                  name: "Add Students",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AddStudentsPage();
                        },
                      ),
                    );
                  }),
              DrawerButtons(
                  name: "All Courses",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AllFacultyPage();
                        },
                      ),
                    );
                  }),
              DrawerButtons(
                  name: "All Students",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AllStudentsPage();
                        },
                      ),
                    );
                  }),
              DrawerButtons(
                  name: "All Teachers",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AllTeachersPage();
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
