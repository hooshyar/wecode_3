import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150,
              color: Colors.lightBlue[600],
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(height: 8),
                    Text('Mustafa Dilshad'),

                    ///we can add more widgets
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
