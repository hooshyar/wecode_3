import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: add an image from Kurdistan Flag
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
          ),
          body: Column(
            children: [
              Image.network(
                  "https://constitutionnet.org/sites/default/files/kurdistan-4542293_1920.jpg"),
              Text(
                'Hello Kurdistan',
              ),
            ],
          )),
    );
  }
}
