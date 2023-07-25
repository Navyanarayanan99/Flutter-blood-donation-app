import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Learn flutter'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            leading: Icon(Icons.home),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            elevation: 30),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.red,
                elevation: 20,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Hello'),
                      subtitle: Text('Learn Flutter'),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
