import 'package:flutter/material.dart';

class CalcButtonView extends StatefulWidget {
  const CalcButtonView(this.buttonText, this.buttonColor, this.buttonPressed,
      {super.key, this.fontSize = 27});

  final String buttonText;
  final Color buttonColor;
  final void Function()? buttonPressed;
  final double fontSize;

  @override
  State<CalcButtonView> createState() => _CalcButtonViewState();
}

class _CalcButtonViewState extends State<CalcButtonView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: widget.buttonText == '=' ? 150 : 70,
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: widget.buttonPressed,
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: widget.buttonColor),
        child: Text(
          widget.buttonText,
          style: TextStyle(fontSize: widget.fontSize, color: Colors.white),
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: CalcButtonView('AC', Colors.white10, () => print('AC')),
  ));
}
