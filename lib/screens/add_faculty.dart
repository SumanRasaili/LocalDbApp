import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddFacultyPage extends StatefulWidget {
  const AddFacultyPage({super.key});

  @override
  State<AddFacultyPage> createState() => _AddFacultyPageState();
}

class _AddFacultyPageState extends State<AddFacultyPage> {
  TextEditingController facultyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Faculty"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Faculty Name",
                controller: facultyController,
                isRequired: true,
              ),
              const SizedBox(
                height: 15,
              ),
              DrawerButtons(
                onPressed: () {
                  Navigator.pop(context);
                },
                name: "Save Faculty",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
