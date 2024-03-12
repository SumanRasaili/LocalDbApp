import 'package:firestoreapp/model/Students/students_db_model.dart';
import 'package:firestoreapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class DetailPage extends ConsumerStatefulWidget {
  final List<StudentModel> stdDetail;
  const DetailPage({super.key, required this.stdDetail});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return SizedBox(
                      height: 60,
                      child: Card(
                          child: Center(
                        child: Text(
                          widget.stdDetail[index].studentName ?? "-",
                          style: const TextStyle(
                              color: AppColors.black2cColor, fontSize: 18),
                        ),
                      )),
                    );
                  },
                  itemCount: widget.stdDetail.length)
            ],
          ),
        ),
      ),
    );
  }
}
