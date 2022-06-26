import 'package:flutter/material.dart';
import 'package:wecode_3/models/data_modal.dart';
import 'package:wecode_3/src/person_detail.dart';
import '../models/mock_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';
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
            //create a list of PersonModal and return data as a map
            List<PersonModal> persons = data.map((element) {
              //using named constructor from data_modal file
              return PersonModal.fromMap(element);
            }).toList();
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
                    child: Image.network(persons[index].avatar),
                  ),
                  title: Text(persons[index].id),
                  subtitle: Text(persons[index].gender),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        PersonDetail.routeName,
                        arguments: persons[index],
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
