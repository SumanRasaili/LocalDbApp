import 'package:firestoreapp/model/faculty_all_details_services.dart';
import 'package:firestoreapp/model/facultyalldetails_db_model.dart';
import 'package:firestoreapp/screens/detail_page.dart';
import 'package:firestoreapp/widgets/home_drawer_widget.dart';
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
    final data = ref.watch(facalldetailapiProvider);
    return Scaffold(
      drawer: const HomeDrawerWidget(),
      appBar: AppBar(
        title: const Text(
          "HomeScreen",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: StreamBuilder<List<FacultyAllDetailModel>>(
          builder: (context, snapshot) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return DetailPage(
                              facDetail: snapshot.data![index].subjects,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "${snapshot.data?[index].facultyName}",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  );
                });
          },
          stream: data.getStream(),
        ),
      ),
    );
  }
}
