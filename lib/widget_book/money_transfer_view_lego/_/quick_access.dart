import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styled_widget/styled_widget.dart';

class QuickAccessView extends StatefulWidget {
  QuickAccessView(
      {super.key, required this.icon, required this.name, required this.color});

  final String icon;
  final String name;
  final String color;

  @override
  State<QuickAccessView> createState() => _QuickAccessViewState();
}

class _QuickAccessViewState extends State<QuickAccessView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: 100,
          width: 200,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              border:
              Border.all(width: 1, color: Colors.grey.withOpacity(0.35)),
              borderRadius: BorderRadius.circular(20),
              color:
              widget.color == 'red' ? Colors.blue.shade700 : Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.color == "red" ? Colors.grey[200] : Colors.blue,
                ),
                child:
                SvgPicture.asset('assets/lego/money_transfer_view_lego/trello.svg',
                    colorFilter: ColorFilter.mode(
                        widget.color == "red"
                            ? Colors.grey[800]!
                            : Colors.grey[200]!,
                        BlendMode.srcIn
                    ),
                    height: 15,
                    width: 15),
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: widget.color == 'red'
                        ? Colors.grey[200]
                        : Colors.grey[700]),
              )
            ],
          )),
    ).padding(all: 10);
  }
}
