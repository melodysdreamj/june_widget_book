import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class CardView extends StatefulWidget {
  CardView(
      {super.key,
        required this.icon,
        required this.cardNumber,
        required this.holderName,
        required this.expiryDate});

  final String icon;
  final String cardNumber;
  final String holderName;
  final String expiryDate;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: 200,
          width: 400,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade900),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Number',
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        widget.cardNumber,
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    child: Image.asset(widget.icon),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CARD HOLDERNAME',
                        style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                      ),
                      Text(
                        widget.holderName,
                        style: TextStyle(fontSize: 25, color: Colors.grey[100]),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EXPIRY DATE',
                        style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                      ),
                      Text(
                        widget.expiryDate,
                        style: TextStyle(fontSize: 25, color: Colors.grey[100]),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    ).padding(all: 10);
  }
}