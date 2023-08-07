import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 21, 69, 165), brightness: Brightness.dark)
              .copyWith(background: const Color.fromARGB(255, 53, 53, 53))),
      home: const   FirstRoute(),
    );
  }
}