import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddTeachersPage extends StatefulWidget {
  const AddTeachersPage({super.key});

  @override
  State<AddTeachersPage> createState() => _AddTeachersPageState();
}

class _AddTeachersPageState extends State<AddTeachersPage> {
  TextEditingController teacherController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Teachers"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  labelText: "Teacher Name",
                  validator: (input) => Validators.isRequired(input),
                  controller: teacherController,
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await TeacherServices.addTeacher(
                          teach: TeacherModel(
                        teacherName: teacherController.text,
                      )).then((value) => Navigator.pop(context));
                    }
                  },
                  name: "Save Teacher",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
