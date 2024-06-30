import 'package:flutter/material.dart';

class NewNotePage extends StatelessWidget {
  const NewNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new note!'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Title...",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: "Note...",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Add Note"),
      ),
    );
  }
}
