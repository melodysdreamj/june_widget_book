import 'package:flutter/material.dart';
import 'package:june_flow_util/june_flow_util.dart';

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
        floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
