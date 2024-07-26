import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:styled_widget/styled_widget.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ZoomDrawer(
        controller: zoomDrawerController,
        style: DrawerStyle.defaultStyle,
        menuScreen: Container(
          color: Colors.red,
          child: Text("Menu View")
              .textStyle(Theme.of(context).textTheme.headlineMedium!)
              .fontWeight(FontWeight.bold)
              .center(),
        ),
        mainScreen: Container(
          color: Colors.green,
          child: Text("Main View")
              .textStyle(Theme.of(context).textTheme.headlineMedium!)
              .fontWeight(FontWeight.bold)
              .center(),
        ),
        menuBackgroundColor: Colors.blue,
        borderRadius: 24.0,
        // showShadow: true,
        mainScreenTapClose: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          zoomDrawerController.toggle!();
        },
        child: Icon(Icons.switch_left),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
