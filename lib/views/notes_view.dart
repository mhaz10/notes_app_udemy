import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_udemy/constants.dart';
import 'package:notes_app_udemy/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app_udemy/views/widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(

              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add, color: Colors.black,),),
      body: SafeArea(
          child: const NotesViewBody()
      ),
    );
  }
}



