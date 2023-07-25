import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexnum = 0;

  int counter = 0;

  List tabWidget = [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Profile', style: TextStyle(fontSize: 40)),
    Text('Settings', style: TextStyle(fontSize: 40)),
    Text('Dashboard', style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom navigation'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "DashBoard",
              backgroundColor: Colors.cyan)
        ],
        iconSize: 30,
        //showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: indexnum,
        onTap: (int index) {
          setState(() {
            indexnum = index;
          });
        },
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // position
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.blue,
        mini: true, // decrease size
        tooltip: 'add button',
        child: Icon(Icons.add),
      ),

      // floatingActionButton: FloatingActionButton.extended(onPressed: () {},
      // label: Text('Share'),
      // icon: Icon(Icons.share),
      // ),
      body: Center(
        child: Text("$counter",
        style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
