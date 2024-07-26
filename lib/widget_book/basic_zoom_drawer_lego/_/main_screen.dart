import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text("Main View")
          .textStyle(Theme.of(context).textTheme.headlineMedium!)
          .fontWeight(FontWeight.bold)
          .center(),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: MainScreenView(),
  ));
}
