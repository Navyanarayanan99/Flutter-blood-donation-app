import 'package:flutter/material.dart';
import 'project1/home.dart';
import 'project1/add.dart';
import 'project1/update.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo app",
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddUser(),
        '/update': (context) => UpdateDonor(),
      },
      initialRoute: '/',
    );
  }
}




// import 'package:flutter/material.dart';
// import 'screens/home.dart';
// import 'screens/product.dart';
// import 'screens/about.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: "Demo app", routes: {
//       '/': (context) => const HomeWidget(),
//       '/product': (context) => const ProductScreen(),
//       '/about': (context) => const AboutScreen()
//     },
//     initialRoute: '/',
//     );
//   }
// }
