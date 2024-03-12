import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddFacultyPage extends StatefulWidget {
  const AddFacultyPage({super.key});

  @override
  State<AddFacultyPage> createState() => _AddFacultyPageState();
}

class _AddFacultyPageState extends State<AddFacultyPage> {
  TextEditingController facultyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Courses"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  validator: (input) => Validators.isRequired(input),
                  labelText: "Course Name",
                  controller: facultyController,
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await FacultyServices.createFaculty(
                              fac: CourseModel(
                                  courseName: facultyController.text))
                          .then((value) => Navigator.pop(context));
                    }
                  },
                  name: "Save Faculty",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
