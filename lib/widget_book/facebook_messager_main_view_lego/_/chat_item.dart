import 'package:flutter/material.dart';

class ChatItemView extends StatefulWidget {
  ChatItemView(
      {super.key,
        required this.profileUrl,
        required this.username,
        required this.userMessage,
        required this.timeago,
        required this.seen});

  final String profileUrl;
  final String username;
  final String userMessage;
  final String timeago;
  final bool seen;

  @override
  State<ChatItemView> createState() => _ChatItemViewState();
}

class _ChatItemViewState extends State<ChatItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(widget.profileUrl),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.userMessage),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(widget.timeago))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          widget.seen
              ? Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue),
            child: Column(
              children: [],
            ),
          )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}