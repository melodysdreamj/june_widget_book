import 'package:flutter/material.dart';
import 'package:june_flow_util/june_flow_util.dart';
import 'package:styled_widget/styled_widget.dart';

import 'item.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("Chat")
              .textStyle(Theme.of(context).textTheme.titleLarge!)
              .fontWeight(FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search,
                    size: 30,
                    color: Theme.of(context).textTheme.bodyMedium!.color!)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline,
                    size: 30,
                    color: Theme.of(context).textTheme.bodyMedium!.color!)),
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ItemView(
            name: "Kim Toss",
            imageUrl: "https://june-arch-asset.pages.dev/winter.webp",
            stateMessage: "Toss Bank",
          );
        }),
        floatingActionButton: FloatingActionButtonKit(),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
