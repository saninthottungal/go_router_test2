import 'package:flutter/material.dart';
import 'package:go_route_test2/pages/home/home_page.logic.dart';
import 'package:go_route_test2/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final notes = ref.watch(notesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
          style: textTheme.displaySmall,
        ),
      ),
      body: notes.isEmpty
          ? const Center(
              child: Text("No notes found, try creating one!"),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: const Border.fromBorderSide(
                      BorderSide(
                        color: Colors.black54,
                        width: 2,
                      ),
                    ),
                  ),
                  height: 50,
                  width: 50,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        width: double.infinity,
                        child: Text(
                          notes[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            textAlign: TextAlign.start,
                            notes[index].description,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NewNoteRoute().push(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
