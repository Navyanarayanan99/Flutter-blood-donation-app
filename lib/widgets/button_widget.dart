import 'dart:math';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 30,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  log("clicked" as num);
                },
                child: Text('Text button')),
            TextButton.icon(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                log("clicked" as num);
              },
              onLongPress: () {
                log('Long pressed' as num);
              },
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.yellow),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    minimumSize: MaterialStateProperty.all(Size(150, 40)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 20)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                onPressed: () {},
                child: Text('Sign In')),
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(100, 30)),
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 20
                )),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.yellow,
                    width: 2,

                  )
                ),
                shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                )
              ),
              
              onPressed: () {},
              child: Text('SignUp'))
          ],
        ),
      ),
    );
  }
}
