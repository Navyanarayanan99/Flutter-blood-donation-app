import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? isCkecked = false;
  bool? isCkecked2 = false;
  bool? isCkecked3 = false;
  bool? isCkecked4 = false;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: isCkecked,
                  onChanged: (val) {
                    setState(() {
                      isCkecked = val;
                    });
                  }),
              Checkbox(
                  tristate: true,
                  activeColor: Colors.red,
                  checkColor: Colors.black,
                  value: isCkecked2,
                  onChanged: (val) {
                    setState(() {
                      isCkecked2 = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    title: Text("send Notifications"),
                    subtitle: Text('Turn on or off notification'),
                    tileColor: Colors.green,
                    value: isCkecked3,
                    onChanged: (val) {
                      setState(() {
                        isCkecked3 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    title: Text("send Notifications"),
                    subtitle: Text('Turn on or off notification'),
                    tileColor: Colors.red,
                    value: isCkecked4,
                    onChanged: (val) {
                      setState(() {
                        isCkecked4 = val;
                      });
                    }),
              ),

               Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    title: Text("send Notifications"),
                    subtitle: Text('Turn on or off notification'),
                    tileColor: Colors.red,
                    value: isCkecked4,
                    onChanged: (val) {
                      setState(() {
                        isCkecked4 = val;
                      });
                    }),
              )
            ],
          ),
        ));
  }
}
