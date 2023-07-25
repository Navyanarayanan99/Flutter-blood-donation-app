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
        child: Container(
          //color: Colors.yellowAccent,
          //height: double.infinity,
          height: 300,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(50),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(color: Colors.yellow, width: 5),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(10, 20), blurRadius: 20)
              ]),
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
