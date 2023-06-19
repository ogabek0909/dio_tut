import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Centered Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var options = BaseOptions(
            baseUrl: 'https://reqres.i/2',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          );
          var dio = Dio(options);
          try {
            Response response = await dio.get('api/users/');
            print(response.data);
          } on DioException catch (error) {
            if (error.response != null) {
              print('something');
            } else {
              print('nimadur');
            }
          }
        },
      ),
    );
  }
}
