import 'package:firestoreapp/model/Teacher/teacher_db_model.dart';
import 'package:firestoreapp/model/Teacher/teacher_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllTeachersPage extends ConsumerStatefulWidget {
  const AllTeachersPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllTeachersPageState();
}

class _AllTeachersPageState extends ConsumerState<AllTeachersPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(teachProv);
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Teachers Page"),
        ),
        body: StreamBuilder<List<TeacherModel>>(
            stream: data.listenTeachers(),
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
                        title: Text(snapshot.data?[index].teacherName ?? "-"),
                        trailing: IconButton(
                            onPressed: () async {
                              await ref
                                  .read(teachProv)
                                  .deleteteach(model: snapshot.data![index]);
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
  }
}
