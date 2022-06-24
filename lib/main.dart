import 'package:flutter/material.dart';
import 'package:wecode_3/src/home.dart';
import 'package:wecode_3/src/person_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Home(),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        PersonDetail.routeName: (context) => const PersonDetail(),
      },
    );
  }
}
