import 'package:firestoreapp/api/user_api.dart';
import 'package:firestoreapp/screens/add_faculty.dart';
import 'package:firestoreapp/screens/add_students.dart';
import 'package:firestoreapp/screens/add_subjects.dart';
import 'package:firestoreapp/screens/add_teacher_screen.dart';
import 'package:firestoreapp/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(userDataprov);
    return RefreshIndicator(
        onRefresh: () async {
          ref.read(apiProvider).getUsers();
        },
        child: Scaffold(
          drawer: Drawer(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DrawerButtons(
                        name: "Add Faculty",
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const AddFacultyPage();
                              },
                            ),
                          );
                        }),
                    DrawerButtons(
                        name: "Add Subjects",
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const AddSubjectsPage();
                              },
                            ),
                          );
                        }),
                    DrawerButtons(
                        name: "Add Teacher",
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const AddTeachersPage();
                              },
                            ),
                          );
                        }),
                    DrawerButtons(
                        name: "Add Students",
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const AddStudentsPage();
                              },
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            title: const Text(
              "HomeScreen",
              style: TextStyle(color: Colors.blue),
            ),
            centerTitle: true,
          ),
          body: data.when(
            data: (data) {
              return ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data?[index].name ?? "-"),
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
        ));
  }
}
