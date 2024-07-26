import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class NewView extends StatefulWidget {
  const NewView({Key? key}) : super(key: key);

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  late PageController _pageController;

  String input = '';
  double? output = 0;

  List<Map<String, String>> history = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _submit() {
    if (input.isEmpty) {
      return;
    }
    Parser p = Parser();
    Expression exp = p.parse(input);
    ContextModel cm = ContextModel();
    if (mounted) {
      setState(() {
        output = exp.evaluate(EvaluationType.REAL, cm);
        history.add({
          'input': input,
          'output': output.toString(),
        });
      });
    }
  }

  Widget _buildButton(String label, VoidCallback onPressed, {Color? color, double? fontSize}) {
    return Center(
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? Color(0xFF727272),
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: CircleBorder(),
            side: BorderSide(color: Colors.white38),
            backgroundColor: Color(0xFF424242),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: fontSize ?? 20,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color(0xFF282828),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 28, left: 28, bottom: 10),
                  child: Text(
                    input,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28, left: 28, bottom: 28),
                  child: Text(
                    output == null ? '' : output.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF282828),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    _buildButton('C', () {
                      setState(() {
                        if (input.isNotEmpty) {
                          input = input.substring(0, input.length - 1);
                        }
                      });
                    }),
                    _buildButton('AC', () {
                      setState(() {
                        input = '';
                        output = null;
                      });
                    }),  // AC 버튼의 글자 크기를 작게 조정
                    _buildButton('%', () {
                      setState(() {
                        input += '% ';
                      });
                    }),
                    _buildButton('÷', () {
                      setState(() {
                        input += '/ ';
                      });
                    }),
                    _buildButton('7', () {
                      setState(() {
                        input += '7 ';
                      });
                    }),
                    _buildButton('8', () {
                      setState(() {
                        input += '8 ';
                      });
                    }),
                    _buildButton('9', () {
                      setState(() {
                        input += '9 ';
                      });
                    }),
                    _buildButton('×', () {
                      setState(() {
                        input += '* ';
                      });
                    }),
                    _buildButton('4', () {
                      setState(() {
                        input += '4 ';
                      });
                    }),
                    _buildButton('5', () {
                      setState(() {
                        input += '5 ';
                      });
                    }),
                    _buildButton('6', () {
                      setState(() {
                        input += '6 ';
                      });
                    }),
                    _buildButton('-', () {
                      setState(() {
                        input += '- ';
                      });
                    }),
                    _buildButton('1', () {
                      setState(() {
                        input += '1 ';
                      });
                    }),
                    _buildButton('2', () {
                      setState(() {
                        input += '2 ';
                      });
                    }),
                    _buildButton('3', () {
                      setState(() {
                        input += '3 ';
                      });
                    }),
                    _buildButton('+', () {
                      setState(() {
                        input += '+ ';
                      });
                    }),
                    _buildButton('^', () {
                      setState(() {
                        input += '^ ';
                      });
                    }),
                    _buildButton('0', () {
                      setState(() {
                        input += '0 ';
                      });
                    }),
                    _buildButton('.', () {
                      setState(() {
                        input += '. ';
                      });
                    }),
                    _buildButton('=', _submit, color: Color(0xFFFF7556)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NewView(),
  ));
}