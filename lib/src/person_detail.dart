import 'package:flutter/material.dart';
import 'package:wecode_3/models/mock_data.dart';

class PersonDetail extends StatelessWidget {
  const PersonDetail({Key? key}) : super(key: key);
  static const routeName = '/person-detail';
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final id = arguments['id'];
    final index = arguments['index'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$id'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: 200,
              child: Image.network(data[index]['avatar'].toString()),
            ),
            Text(
              data[index]['position'].toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 5,
              ),
            ),
            const Divider(
              color: Colors.indigo,
              thickness: 2,
            ),
            Text('Gender: ${data[index]['gender']}'),
            Text('Company: ${data[index]['company']}'),
            Text('Department: ${data[index]['department']}'),
          ],
        ),
      ),
    );
  }
}
