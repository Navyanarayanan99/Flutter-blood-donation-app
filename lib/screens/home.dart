//Pushnamed navigator

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              //Text
              title: Text('Navighation - Home'),
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
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(0))),

              //Elevation
              elevation: 30,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/product');
                      },
                      child: Text(
                        'Product page',
                        style: TextStyle(fontSize: 20),
                      )),
                  ElevatedButton(
                      onPressed: () {
                       Navigator.pushNamed(context, '/about');
                      },
                      child: Text(
                        'About page',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            )));
  }
}
