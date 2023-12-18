import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/model/Students/students_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllStudentsPage extends ConsumerStatefulWidget {
  const AllStudentsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllStudentsPageState();
}

class _AllStudentsPageState extends ConsumerState<AllStudentsPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(stdProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Students Page"),
        ),
        body: StreamBuilder<List<StudentModel>>(
            stream: data.listenStudents(),
            builder: (context, snapshot) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 23.0, right: 23, top: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(snapshot.data?[index].studentName ?? "-"),
                        trailing: IconButton(
                            onPressed: () async {
                              await ref
                                  .read(stdProvider)
                                  .deleteStd(model: snapshot.data![index]);
                              // await ref.read(facapiProvider).getAllFaculties();
                            },
                            icon: const Icon(
                              color: Colors.red,
                              Icons.delete,
                            )),
                      ),
                    ),
                  );
                },
              );
            }));
    ;
  }
}
