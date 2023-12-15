import 'package:firestoreapp/model/Faculty/faculty_services.dart';
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
    final data = ref.watch(facDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Faculties"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(facapiProvider).getAllFaculties();
        },
        child: data.when(
          data: (dat) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: dat?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 23.0, right: 23, top: 10),
                  child: Card(
                    child: ListTile(
                      title: Text(dat?[index].facultyName ?? "-"),
                      trailing: IconButton(
                          onPressed: () async {
                            await ref
                                .read(facapiProvider)
                                .deleteFaculty(model: dat![index]);
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
          },
          error: (error, stackTrace) {
            return Text(error.toString());
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
