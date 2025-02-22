import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app_udemy/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}

