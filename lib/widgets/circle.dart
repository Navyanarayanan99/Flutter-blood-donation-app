import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learn flutter',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.home),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: ListView(
        children: const [
          Center(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 80,
                child: Icon(
                  Icons.verified_user,
                  size: 50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/dog.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/dog.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://images.pexels.com/photos/3687770/pexels-photo-3687770.jpeg?auto=compress&cs=tinysrgb&w=400'),
              ),
            )
          ]),
        ),
        ],
      ),
    );
  }
}
