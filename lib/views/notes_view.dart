import 'package:flutter/material.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,

        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black,),),
      body: SafeArea(
          child: const NotesViewBody()
      ),
    );
  }
}
