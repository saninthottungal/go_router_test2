import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
          style: textTheme.displaySmall,
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
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
                    "data will overflow obviously",
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleMedium,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "This inclues the descroption we are talking about.but what if it exceeeds the limit it has with the column? but how does thsi fit? so now where the text went?",
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
