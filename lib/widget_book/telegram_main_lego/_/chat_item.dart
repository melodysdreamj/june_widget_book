import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import 'themes.dart';

class ChatItemView extends StatefulWidget {
  ChatItemView({
    super.key,
    required this.icon,
    required this.initial,
    required this.title,
    required this.sender,
    required this.message,
    required this.time,
    required this.mute,
    required this.unread,
    required this.color,
  });

  final Widget icon;
  final String initial;
  final String title;
  final String sender;
  final String message;
  final String time;
  final bool mute;
  final int unread;
  final Color color;

  @override
  State<ChatItemView> createState() => _ChatItemViewState();
}

class _ChatItemViewState extends State<ChatItemView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: widget.color,
                radius: 25,
                child: widget.initial.isNotEmpty
                    ? Text(widget.initial,
                    style:
                    const TextStyle(color: Colors.white, fontSize: 20))
                    : widget.icon,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        if (widget.mute)
                          const Icon(Icons.volume_off,
                              color: Colors.grey, size: 15),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  '${widget.sender}${(widget.sender == '') ? "" : ":"} ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: widget.message,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (widget.unread > 0)
                Column(
                  children: [
                    Text(widget.time, style: const TextStyle(fontSize: 13)),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: widget.unread > 9
                          ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Text(widget.unread.toString(),
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      )
                          : CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        radius: 12,
                        child: Text(widget.unread.toString(),
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: Scaffold(
      body: ChatItemView(
        icon: FlutterLogo(size: 40),
        initial: '',
        title: 'Flutter Indonesia',
        sender: 'User 3',
        message: 'Hello. Does anyone know how can i directly on/off',
        time: '22:14',
        mute: false,
        unread: 1280,
        color: kBlue5Color,
      ).center(),
    ),
  ));
}
