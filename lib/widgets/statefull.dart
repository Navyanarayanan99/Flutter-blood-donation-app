import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var dspText = "Hello World!";
  var iconClrLike = Colors.black;
  var iconClrDisLike = Colors.black;
  void changeText() {
    setState(() {
      dspText = "Good morning";
    });
  }

  void changeTextHello() {
    setState(() {
      dspText = "Hello";
    });
  }

  void changeClrLike() {
    setState(() {
      if (iconClrLike == Colors.black) {
        iconClrLike = Colors.blue;
      } else {
        iconClrLike = Colors.black;
      }
    });
  }

  void changeClrDisLike() {
    setState(() {
      if (iconClrDisLike == Colors.black) {
        iconClrDisLike = Colors.red;
      } else {
        iconClrDisLike = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dspText,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  changeText();
                },
                child: Text(
                  'Change text',
                  style: TextStyle(fontSize: 30),
                )),
            ElevatedButton(
                onPressed: () {
                  changeTextHello();
                },
                child: Text(
                  'Hello world',
                  style: TextStyle(fontSize: 30),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    changeClrLike();
                  },
                  icon: Icon(Icons.thumb_up),
                  iconSize: 40,
                  color: iconClrLike,
                ),
                IconButton(
                  onPressed: () {
                    changeClrDisLike();
                  },
                  icon: Icon(Icons.thumb_down),
                  iconSize: 40,
                  color: iconClrDisLike,
                ),
              ],
            )
          ],
        )));
  }
}
