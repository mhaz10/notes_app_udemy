import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_udemy/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app_udemy/models/note_model.dart';
import 'package:notes_app_udemy/views/widgets/custom_app_bar.dart';
import 'package:notes_app_udemy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                if (title != null) {
                  widget.note.title = title!;
                }

                if (content != null) {
                  widget.note.subTitle = content!;
                }
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 50,),
            CustomTextField(hintText: widget.note.title, onChanged: (value) {
              title = value;
            },),
            const SizedBox(height: 16,),
            CustomTextField(
              hintText: widget.note.subTitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
