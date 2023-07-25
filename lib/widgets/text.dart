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
            child: Text(
          'Hello world',
          style: TextStyle(fontSize: 40, 
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 1,
          wordSpacing: 10,
          backgroundColor: Colors.yellow,
          shadows: const [
            Shadow(
              color: Colors.black, offset: Offset(5, 5),
              blurRadius: 14
            )
          ]
          ),
        )));
  }
}
