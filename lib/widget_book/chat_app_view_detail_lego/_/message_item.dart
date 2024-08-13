import 'package:flutter/material.dart';

class MessageItemView extends StatefulWidget {
  MessageItemView({
    super.key,
    required this.message,
    required this.receiver,
  });

  final String message;
  final bool receiver;

  @override
  State<MessageItemView> createState() => _MessageItemViewState();
}

class _MessageItemViewState extends State<MessageItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (!widget.receiver ? Alignment.topLeft : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (widget.receiver ? Colors.black : Colors.grey[600]),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(widget.message,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}