//import 'package:brain_kid/ProfileCreate/profile_screen.dart';
//import 'package:brain_kid/Screens/maths_difficulty_select.dart';
//import 'package:brain_kid/Screens/mathsscreen.dart';
//import 'package:brain_kid/Screens/alphabetscreen.dart';
//import 'package:brain_kid/Screens/mathsscreen.dart';
import 'package:brain_kid/MathsQuestions/question1E.dart';
//import 'package:brain_kid/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Question1e(questionCount: 1,));
  }
}
