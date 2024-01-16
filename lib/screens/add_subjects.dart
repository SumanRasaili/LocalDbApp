import 'package:firestoreapp/components/custom_textfield.dart';
import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/faculty_all_details_services.dart';
import 'package:firestoreapp/model/facultyalldetails_db_model.dart';
import 'package:firestoreapp/utils/validators.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:firestoreapp/widgets/custom_dropdown_search.dart';
import 'package:firestoreapp/widgets/dropdown_value_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddSubjectsPage extends ConsumerStatefulWidget {
  const AddSubjectsPage({super.key});

  @override
  ConsumerState<AddSubjectsPage> createState() => _AddSubjectsPageState();
}

class _AddSubjectsPageState extends ConsumerState<AddSubjectsPage> {
  TextEditingController subController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedItem;
  int? selectedItemId;
  @override
  Widget build(BuildContext context) {
    final data = ref.read(facapiProvider).getAllFaculties();
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
                FutureBuilder<List<FacultyModel>>(
                  future: data,
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data != null) {
                      final dataList = snapshot.data ?? [];
                      return CustomDropDown(
                          options: dataList
                              .map(
                                (e) => DropdownValueModel(
                                  key: "${e.facultyName}",
                                  value: "${e.facultyName}",
                                ),
                              )
                              .toList(),
                          dropDownValueFunction: (String? value) {
                            setState(() {
                              selectedItem = value;
                              var d = dataList.firstWhere(
                                  (element) => element.facultyName == value);
                              selectedItemId = d.id;
                              print(selectedItem);
                              print(selectedItemId);
                            });
                          },
                          isRequired: true,
                          hintText: "Select Faculty ",
                          labelText: "Select Faculty");
                    }
                    return const SizedBox();
                  },
                ),
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
                      final facdata = FacultyAllDetailModel(
                          id: selectedItemId, facultyName: "$selectedItem");
                      final subdata = SubjectModel(
                        facultyId: "$selectedItemId",
                        subjectName: subController.text,
                      );
                      await AllFacultyDetailsServices.addFaculty(
                              fac: facdata, sub: subdata)
                          .then((value) => Navigator.pop(context));
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
