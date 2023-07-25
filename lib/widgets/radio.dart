import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
  String? gender;

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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Select your gender",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                        value: 'male',
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                        value: 'female',
                        groupValue: gender,
                        onChanged: (String? value) {
                          gender = value;
                        }),
                  ),
                  ListTile(
                    title: Text("Other"),
                    leading: Radio(
                        value: 'Other',
                        groupValue: gender,
                        onChanged: (String? value) {
                          gender = value;
                        }),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
