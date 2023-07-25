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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'user name',
                      hintText: 'Enter your username',
                      prefixIcon: Icon(Icons.verified_user),
                      suffixIcon: Icon(Icons.verified)),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'user name',
                      hintText: 'Enter your username',
                      prefixText: "Mr. "),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'user name',
                    hintText: 'Enter your username',
                    helperText: "Enter your username or email",
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.red),
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                ),
                TextField(
                  maxLength: 10,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.purple)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black)),
                      label: Text('User name')),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}
