import 'package:flutter/material.dart';
import 'package:june_flow_util/june_flow_util.dart';
import 'package:styled_widget/styled_widget.dart';

import 'drawer.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      drawer: DrawerView(),
      body: Text("NewView")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
