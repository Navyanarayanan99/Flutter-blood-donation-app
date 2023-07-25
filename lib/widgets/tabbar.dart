import 'package:flutter/material.dart';

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
            bottom: TabBar(tabs: const [
              // Tab(text: 'Chat'),
              // Tab(text: 'Status'),
              // Tab(text: 'Calls')

              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.share),)
            ]),
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
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(0))),

            //Elevation
            elevation: 30,
          ),
          body: TabBarView(
            children: const [
              Center(
                  child: Text(
                'Chats Page',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                'Status Page',
                style: TextStyle(fontSize: 30),
              )),
              Center(
                  child: Text(
                'Calls Page',
                style: TextStyle(fontSize: 30),
              ))
            ],
          )),
    );
  }
}
