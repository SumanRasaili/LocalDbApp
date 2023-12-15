import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/model/Students/students_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddStudentsPage extends StatefulWidget {
  const AddStudentsPage({super.key});

  @override
  State<AddStudentsPage> createState() => _AddStudentsPageState();
}

class _AddStudentsPageState extends State<AddStudentsPage> {
  TextEditingController studController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Students"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(

                  validator: (input)=>Validators.isRequired(input),
                  labelText: "Students Name",
                  controller: studController,
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: ()async {
                    if (_formKey.currentState!.validate()) {
                   await   StudentsServices.addStudents(
                          sm: StudentModel(
                        studentName: studController.text,
                      )).then((value) => Navigator.pop(context));
                    }
                  },
                  name: "Save Students",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
