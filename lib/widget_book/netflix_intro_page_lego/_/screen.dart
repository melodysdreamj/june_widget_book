import 'package:flutter/material.dart';

class ScreenView extends StatefulWidget {
  ScreenView(
      {super.key,
        required this.imagePath,
        required this.subtitle,
        required this.title});

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        widget.imagePath,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: 1000,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.transparent,
            Color.fromARGB(210, 0, 0, 0),
            Colors.black
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
      Positioned(
        bottom: 120,
        left: 0,
        right: 0,
        child: Center(
          child: SizedBox(
            width: 350,
            child: Center(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 70,
        left: 0,
        right: 0,
        child: Center(
          child: SizedBox(
            width: 300,
            child: Center(
              child: Text(
                widget.subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

main() async {
  return runApp(MaterialApp(
    home: Scaffold(
      body: ScreenView(
          imagePath: 'assets/lego/netflix_intro_page_lego/screen_2.webp',
          subtitle:
          'Unlimited films, TV programmes and more. Watch anywhere. Cancel at any time.',
          title: 'Enjoy on your TV.'),
    ),
  ));
}
