import 'package:flutter/material.dart';
import '../screens/product.dart';
import '../screens/about.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductScreen()));
                      },
                      child: Text(
                        'Product page',
                        style: TextStyle(fontSize: 20),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutScreen()));
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
