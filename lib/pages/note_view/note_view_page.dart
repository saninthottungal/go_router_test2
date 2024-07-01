import 'package:flutter/material.dart';
import 'package:go_route_test2/pages/home/home_page.state.dart';

class NoteViewPage extends StatelessWidget {
  const NoteViewPage({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(note.description),
      ),
    );
  }
}
