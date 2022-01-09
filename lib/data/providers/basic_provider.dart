import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/data/repositories/repository_implementation.dart';

enum HttpState { loading, error, success, initial }

class BasicProvider extends ChangeNotifier {
  Response? response;
  String _index = "initial";
  HttpState state = HttpState.initial;
  String message = '';

  String get index => _index;

  void changeIndex(String newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  Future getHttpData() async {
    print("Im am here");

    print(state);
    state = HttpState.loading;
    print(state);

    try {
      Future.delayed(Duration(seconds: 10));

      final response1 = await UserRepositoryImpl.instance.getData();
      response = response1;
      // print(response?.data);

      state = HttpState.success;
    } catch (err) {
      message = err.toString();

      state = HttpState.error;
      debugPrint("Error :$err");
    }
    notifyListeners();
  }
}
