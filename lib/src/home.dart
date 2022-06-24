import 'package:flutter/material.dart';
import 'package:wecode_3/src/person_detail.dart';
import '../models/mock_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Data'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (ctx, index) {
            return Card(
              margin: const EdgeInsets.only(
                top: 3,
                left: 10,
                right: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    child: Image.network(data[index]['avatar'].toString()),
                  ),
                  title: Text(data[index]['id'].toString()),
                  subtitle: Text(data[index]['gender'].toString()),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        PersonDetail.routeName,
                        arguments: {
                          'id': data[index]['id'].toString(),
                          'index': index,
                        },
                      );
                    },
                    icon: const Icon(Icons.navigate_next),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
