import 'package:firestoreapp/model/Faculty/faculty_db_model.dart';
import 'package:firestoreapp/model/Faculty/faculty_services.dart';
import 'package:firestoreapp/screens/edit_faculty_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllFacultyPage extends ConsumerStatefulWidget {
  const AllFacultyPage({super.key});

  @override
  ConsumerState<AllFacultyPage> createState() => _AllFacultyPageState();
}

class _AllFacultyPageState extends ConsumerState<AllFacultyPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(facapiProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Faculties Page"),
        ),
        body: StreamBuilder<List<FacultyModel>>(
            stream: data.getStream(),
            builder: (context, snapshot) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 23.0, right: 23, top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditFacultyPage(
                                  id: snapshot.data?[index].id ?? 0,
                                  facName:
                                      snapshot.data?[index].facultyName ?? "",
                                )));
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(snapshot.data?[index].facultyName ?? "-"),
                          trailing: IconButton(
                              onPressed: () async {
                                await ref.read(facapiProvider).deleteFaculty(
                                    model: snapshot.data![index]);
                                // await ref.read(facapiProvider).getAllFaculties();
                              },
                              icon: const Icon(
                                color: Colors.red,
                                Icons.delete,
                              )),
                        ),
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
