import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddTeachersPage extends StatefulWidget {
  const AddTeachersPage({super.key});

  @override
  State<AddTeachersPage> createState() => _AddTeachersPageState();
}

class _AddTeachersPageState extends State<AddTeachersPage> {
  TextEditingController teacherController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Teachers"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Teacher Name",
                controller: teacherController,
                isRequired: true,
              ),
              const SizedBox(
                height: 15,
              ),
              DrawerButtons(
                onPressed: () {
                  Navigator.pop(context);
                },
                name: "Save Teacher",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
