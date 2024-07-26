import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ManuScreenView extends StatefulWidget {
  const ManuScreenView({super.key});

  @override
  State<ManuScreenView> createState() => _ManuScreenViewState();
}

class _ManuScreenViewState extends State<ManuScreenView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("Menu View")
          .textStyle(Theme.of(context).textTheme.headlineMedium!)
          .fontWeight(FontWeight.bold)
          .center(),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: ManuScreenView(),
  ));
}
