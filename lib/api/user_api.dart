import 'package:dio/dio.dart';
import 'package:firestoreapp/model/user_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider<UserApi>((ref) {
  return UserApi();
});
final userDataprov = FutureProvider<List<UserModel>?>((ref) {
  return ref.read(apiProvider).getUsers();
});

class UserApi {
  Future<List<UserModel>?> getUsers() async {
    try {
      print("get Data Called");
      final data =
          await Dio().get("https://jsonplaceholder.typicode.com/users");

      print("api response is ${data.data}");
      List<UserModel> users = ((data.data) as List)
          .map((datas) => UserModel.fromJson(datas))
          .toList();
      print("result $users");
      return users;
    } on DioException catch (e) {
      print(e.toString());
      return null;
    }
  }
}
