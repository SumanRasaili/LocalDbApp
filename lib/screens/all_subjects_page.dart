import 'package:firestoreapp/model/Subjects/subject_db_model.dart';
import 'package:firestoreapp/model/Subjects/subject_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllSubjectsPage extends ConsumerStatefulWidget {
  const AllSubjectsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllSubjectsPageState();
}

class _AllSubjectsPageState extends ConsumerState<AllSubjectsPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(subProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Subjects Page"),
        ),
        body: StreamBuilder<List<SubjectModel>>(
            stream: data.listenSubjects(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 23.0, right: 23, top: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(snapshot.data?[index].subjectName ?? "-"),
                        trailing: IconButton(
                            onPressed: () async {
                              await ref
                                  .read(subProvider)
                                  .deleteSub(model: snapshot.data![index]);
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
