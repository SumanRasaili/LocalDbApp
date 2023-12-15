import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class AddStudentsPage extends StatefulWidget {
  const AddStudentsPage({super.key});

  @override
  State<AddStudentsPage> createState() => _AddStudentsPageState();
}

class _AddStudentsPageState extends State<AddStudentsPage> {
   TextEditingController studController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Students"),
      ),
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Students Name",
                controller: studController,
                isRequired: true,
              ),
              const SizedBox(
                height: 15,
              ),
              DrawerButtons(
                onPressed: () {
                  Navigator.pop(context);
                },
                name: "Save Students",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
