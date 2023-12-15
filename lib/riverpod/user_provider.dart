// import 'package:firestoreapp/api/user_api.dart';
// import 'package:firestoreapp/model/user_models.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final userDataProvider =
//     ChangeNotifierProvider<UserProvider>((ref) => UserProvider());

// class UserProvider extends ChangeNotifier {
//   bool isLoading = false;
//   List<UserModel>? userModel;
//   getData() async {
//     isLoading = true;
//     final datas = await UserApi.getUsers();
//     print("prov data is $datas");
//     userModel = datas;
//     isLoading = false;
//     notifyListeners();
//   }
// }
