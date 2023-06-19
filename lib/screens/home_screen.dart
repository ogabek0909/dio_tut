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
            headers: {"X-Api-Key": "bcb76b7573c14bb283db3cf63089b5f2"},
            baseUrl: 'https://randommer.io/',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          );
          var dio = Dio(options);
          Response response = await dio.get('api/Card');
          print(response.data);
        },
      ),
    );
  }
}
