import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditFacultyPage extends ConsumerStatefulWidget {
  final String facName;
  final int id;
  const EditFacultyPage({super.key, required this.facName, required this.id});

  @override
  ConsumerState<EditFacultyPage> createState() => _EditFacultyPageState();
}

class _EditFacultyPageState extends ConsumerState<EditFacultyPage> {
  TextEditingController facultyController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    facultyController.text = widget.facName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Faculty"),
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
                  labelText: "Faculty Name",
                  controller: facultyController,
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await FacultyServices.editFaculty(
                              fa: FacultyModel(
                                  id: widget.id,
                                  facultyName: facultyController.text))
                          .then((value) => Navigator.pop(context));
                    }
                  },
                  name: "Edit Faculty",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
