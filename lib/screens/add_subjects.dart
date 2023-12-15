import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddSubjectsPage extends StatefulWidget {
  const AddSubjectsPage({super.key});

  @override
  State<AddSubjectsPage> createState() => _AddSubjectsPageState();
}

class _AddSubjectsPageState extends State<AddSubjectsPage> {
  TextEditingController subController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Sujects"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Faculty Name",
                controller: subController,
                isRequired: true,
              ),
              const SizedBox(
                height: 15,
              ),
              DrawerButtons(
                onPressed: () {
                  Navigator.pop(context);
                },
                name: "Save Subjects",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
