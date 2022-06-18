import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //the value of variable passed by constructor
  const Home({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartUp'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //main axix alignment to make it center
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RoundedImage(),
            //some vertical space with sizedbox widget
            const SizedBox(height: 30.0),
            ShadowedText(text: text),
          ],
        ),
      ),
    );
  }
}

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      //clipRRect used to round the child widget
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          'https://wallpapercave.com/wp/wp2668088.jpg',
        ),
      ),
    );
  }
}

class ShadowedText extends StatelessWidget {
  const ShadowedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello $text",
      style: const TextStyle(
        shadows: [
          Shadow(
            offset: Offset(0, 7.0),
            blurRadius: 8.0,
            color: Color.fromARGB(220, 189, 189, 189),
          ),
        ],
        letterSpacing: 10,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
