import 'package:flutter/material.dart';

class NoteViewPage extends StatelessWidget {
  const NoteViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text("data"),
      ),
    );
  }
}
