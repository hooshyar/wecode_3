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
                  const SizedBox(height: 50),
              Text(
                'Hello Kurdistan', style: TextStyle(fontSize: 30),
              ),
              const Text("Thanks Mr.Hooshyar , you are one of the best coachs and teachers , thanks alot ..."),
            ],
          )),
      //Assignment7: have both widgets centered, do some styling for the Hello Kurdistan Text, + have the flag curved and add some spacing around and between both widgets
    );
  }
}
