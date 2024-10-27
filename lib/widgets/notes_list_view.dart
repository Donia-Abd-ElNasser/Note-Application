import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/notes_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.builder(
            itemCount:notes.length ,
            padding: EdgeInsets.zero,
            itemBuilder: (context,index){
            
            return   Padding(
              padding:  const EdgeInsets.only(bottom: 8),
              child: NotesWidget(note: notes[index],),
            );
          }),
        );
      },
    );
  }
}