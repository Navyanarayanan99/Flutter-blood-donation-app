import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Navya"),
                accountEmail: Text("navya@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/dog.jpg'),
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.white,
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),

               ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.white,
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),

               ListTile(
                leading: Icon(Icons.dashboard),
                iconColor: Colors.white,
                title: Text(
                  'Dash Board',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              ),

               ListTile(
                leading: Icon(Icons.logout),
                iconColor: Colors.white,
                title: Text(
                  'SignOut',
                  style: TextStyle(fontSize: 18),
                ),
                textColor: Colors.white,
                onTap: () {},
              )
            ],
          ),
        ),
        body: null);
  }
}
