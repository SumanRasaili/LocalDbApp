import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/Subjects/subject_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddSubjectsPage extends StatefulWidget {
  const AddSubjectsPage({super.key});

  @override
  State<AddSubjectsPage> createState() => _AddSubjectsPageState();
}

class _AddSubjectsPageState extends State<AddSubjectsPage> {
  TextEditingController subController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Sujects"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  labelText: "Subject Name",
                  controller: subController,
                  validator: (input) => Validators.isRequired(input),
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await SubjectServices.addSubjects(
                          subj: SubjectModel(
                        subjectName: subController.text,
                      )).then((value) => Navigator.pop(context));
                    }
                  },
                  name: "Save Subjects",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
