import 'package:database/pages/employe.dart';
import 'package:database/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyALW5pmGs7oydnjyxwuzkVXFZpujq_RVhQ',
        appId: '1:857432738811:ios:760d9c6a886d90ec33195e',
        messagingSenderId: '857432738811',
        projectId: 'jjpk-a1cf2'
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'database',
      home: const HomePage(),
      routes: {
        '/employee':(context)=> const Employee(),
      },
    );
  }
}