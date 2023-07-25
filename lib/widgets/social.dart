import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social App'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('hello'),
                    subtitle: Text('23 minutes ago'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/dog.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('cute puppy...'),
                  ),
                  Image.asset('images/dog.jpg', width: 400, fit: BoxFit.cover),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.thumb_down)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('hello'),
                    subtitle: Text('23 minutes ago'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/dog2.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('cute puppy...'),
                  ),
                  Image.asset('images/dog2.jpg', width: 400, fit: BoxFit.cover),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.thumb_down)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
