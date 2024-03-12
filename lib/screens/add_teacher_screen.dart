import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_services.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:firestoreapp/widgets/custom_dropdown_search.dart';
import 'package:firestoreapp/widgets/dropdown_value_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddTeachersPage extends ConsumerStatefulWidget {
  const AddTeachersPage({super.key});

  @override
  ConsumerState<AddTeachersPage> createState() => _AddTeachersPageState();
}

class _AddTeachersPageState extends ConsumerState<AddTeachersPage> {
  TextEditingController teacherController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedItem;
  int? selectedItemId;
  String? selectedFaculty;
  int? selectedFacultyId;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final datas = ref.read(facapiProvider).getAllFaculties();
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
                FutureBuilder<List<CourseModel>>(
                  future: datas,
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
                          course: CourseModel(
                              courseName: selectedItem, id: selectedItemId),
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
