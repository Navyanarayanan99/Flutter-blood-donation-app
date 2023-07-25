import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar: AppBar(
          //Text
          title: Text('Learn Flutter'),
          centerTitle: true,

          //BG color
          backgroundColor: Color.fromARGB(255, 13, 180, 91),

          //leading - left side icons
          leading: Icon(Icons.home),

          //actions-right side icons
          actions: [
            IconButton(
                onPressed: () {}, //anonimous function
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {}, //anonimous function
                icon: Icon(Icons.more_vert))
          ],

          //shape
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),

          //Elevation
          elevation: 30,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.deepOrange,
                child: Image.asset(
                  'images/dog.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.network(
                    'https://w0.peakpx.com/wallpaper/209/34/HD-wallpaper-cute-puppy-dog-dogs-puppies-sweet-white-thumbnail.jpg'),
              )
            ],
          ),
        ));
  }
}
