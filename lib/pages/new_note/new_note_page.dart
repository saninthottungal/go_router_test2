import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_route_test2/pages/home/home_page.logic.dart';
import 'package:go_route_test2/pages/home/home_page.state.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewNotePage extends HookConsumerWidget {
  const NewNotePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final descController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new note!'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Title...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: descController,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: "Note...",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final title = titleController.text;
          final desc = descController.text;
          if (desc.isNotEmpty) {
            ref
                .read(notesProvider.notifier)
                .addNote(Note.create(title: title, description: desc));
          }
          context.pop();
        },
        label: const Text("Add Note"),
      ),
    );
  }
}
