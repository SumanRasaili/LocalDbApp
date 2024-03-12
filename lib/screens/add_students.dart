import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/model/Students/students_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:firestoreapp/widgets/custom_dropdown_search.dart';
import 'package:firestoreapp/widgets/dropdown_value_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddStudentsPage extends ConsumerStatefulWidget {
  const AddStudentsPage({super.key});

  @override
  ConsumerState<AddStudentsPage> createState() => _AddStudentsPageState();
}

class _AddStudentsPageState extends ConsumerState<AddStudentsPage> {
  TextEditingController studController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedItem;
  int? selectedItemId;
  @override
  Widget build(BuildContext context) {
    final data = ref.read(facapiProvider).getAllFaculties();
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
                FutureBuilder<List<CourseModel>>(
                  future: data,
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data != null) {
                      final dataList = snapshot.data ?? [];
                      return CustomDropDown(
                          options: dataList
                              .map(
                                (e) => DropdownValueModel(
                                  key: "${e.courseName}",
                                  value: "${e.courseName}",
                                ),
                              )
                              .toList(),
                          dropDownValueFunction: (String? value) {
                            setState(() {
                              selectedItem = value;
                              var d = dataList.firstWhere(
                                  (element) => element.courseName == value);
                              selectedItemId = d.id;
                              print(selectedItem);
                              print(selectedItemId);
                            });
                          },
                          isRequired: true,
                          hintText: "Select Course ",
                          labelText: "Select Course");
                    }
                    return const SizedBox();
                  },
                ),
                CustomTextField(
                  validator: (input) => Validators.isRequired(input),
                  labelText: "Students Name",
                  controller: studController,
                  isRequired: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerButtons(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await StudentsServices.addStudents(
                          stud: StudentModel(studentName: studController.text),
                          course: CourseModel(
                            id: selectedItemId,
                            courseName: selectedItem,
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
