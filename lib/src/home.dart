import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //the url variable is changable according to which image is clicked
  String url =
      'https://c4.wallpaperflare.com/wallpaper/183/980/62/computer-avid-technology-simple-wallpaper-thumb.jpg';

//temperory variable to hold the top image address
  String temp = '';
//a method which return Container method
  Widget images(String link, double size, int index) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: size / 2,
      height: 130,
      child: GestureDetector(
        onTap: () {
          setState(() {
            temp = url;
            url = link;
            _images[index] = temp;
            link = temp;
          });
        },
        child: Image.network(
          link,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

//list of image address
  final List<String> _images = [
    'https://wallpaperaccess.com/full/2529536.png',
    'https://i.pinimg.com/736x/9d/2b/04/9d2b04a381fe509b5f19f26dba6b1d1c.jpg',
    'https://i.pinimg.com/236x/9e/fb/dc/9efbdc2665dd0d0c9ac12a276b308784.jpg',
    // 'https://c4.wallpaperflare.com/wallpaper/183/980/62/computer-avid-technology-simple-wallpaper-thumb.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    //take the device width
    final orientation = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartUp'),
        centerTitle: true,
      ),
      body: Column(
        //main axix alignment to make it center
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //this is top image
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(url),
          ),
          //used sized box with listView.Builder() because column and listview not work together
          SizedBox(
            height: 130,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, int index) =>
                  images(_images[index], orientation, index),
              itemCount: _images.length,
            ),
          ),
        ],
      ),
    );
  }
}
