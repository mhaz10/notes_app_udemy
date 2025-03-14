import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_udemy/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app_udemy/models/note_model.dart';
import 'package:notes_app_udemy/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView(
          note: note,
        )));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(note.title , style: TextStyle(color: Colors.black, fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(note.subTitle, style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 18)),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();

                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }, icon: Icon(Icons.delete, color: Colors.black,size: 30,)),
            ),
            Text(note.date, style: TextStyle(color: Colors.black.withOpacity(.4)))
          ],
        ),
      ),
    );
  }
}