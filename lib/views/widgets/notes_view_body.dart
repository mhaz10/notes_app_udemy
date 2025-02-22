import 'package:flutter/material.dart';
import 'package:notes_app_udemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_udemy/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}

