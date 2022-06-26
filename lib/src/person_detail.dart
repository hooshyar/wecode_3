import 'package:flutter/material.dart';
import 'package:wecode_3/models/data_modal.dart';
import 'package:wecode_3/models/mock_data.dart';

class PersonDetail extends StatelessWidget {
  const PersonDetail({Key? key}) : super(key: key);
  static const routeName = '/person-detail';
  @override
  Widget build(BuildContext context) {
    //get the data from arguments of navigator from home.dart file
    final arguments = ModalRoute.of(context)!.settings.arguments as PersonModal;
    //final arguments = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    //get the sender id and the index
    // final id = arguments['id'];
    // final index = arguments['index'];

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.id),
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
              child: Image.network(arguments.avatar),
            ),
            Text(
              arguments.position,
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
            Text('Gender: ${arguments.gender}'),
            Text('Company: ${arguments.company}'),
            Text('Department: ${arguments.department}'),
          ],
        ),
      ),
    );
  }
}
