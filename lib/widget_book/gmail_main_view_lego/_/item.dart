import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class ItemView extends StatefulWidget {
  ItemView(
      {super.key,
        required this.useravatar,
        required this.avatarcolor,
        required this.username,
        required this.subject,
        required this.body,
        required this.starred,
        required this.timeago,
        required this.seen,
        required this.file,
        required this.filename});

  final String? useravatar;
  final Color? avatarcolor;
  final String username;
  final String subject;
  final String body;
  final bool starred;
  final String timeago;
  final bool seen;
  final bool file;
  final String filename;

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 15),
          child: Row(
            children: <Widget>[
              widget.useravatar != null
                  ? Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(widget.useravatar!),
                ),
              )
                  : Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  backgroundColor: widget.avatarcolor,
                  radius: 25.0,
                  child: Text(
                    widget.username[0],
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          widget.username ?? "Unknow user",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                              fontSize: 16.0,
                              color: Colors.grey[800],
                              fontWeight: widget.seen
                                  ? FontWeight.normal
                                  : FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.subject,
                          maxLines: 1,
                          style:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.0,
                            fontWeight: widget.seen
                                ? FontWeight.normal
                                : FontWeight.bold,
                            color: widget.seen
                                ? Colors.grey
                                : Colors.grey[800],
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.body,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      widget.file
                          ? Container(
                        width: 150,
                        height: 30,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(color: Colors.grey.shade300)),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.image,
                                size: 16,
                                color: Color(0XFFFF0000),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.filename,
                                maxLines: 1,
                                style: TextStyle(color: Colors.grey[700]),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      )
                          : SizedBox.shrink()
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    widget.timeago,
                    style: TextStyle(
                        fontWeight:
                        widget.seen ? FontWeight.normal : FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: widget.starred
                          ? Icon(Icons.star, color: Colors.amber)
                          : Icon(Icons.star_border)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: Scaffold(
      body: ItemView(
          useravatar:
          "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp",
          avatarcolor: Colors.blue,
          username: "John Doe",
          subject: "Hello",
          body: "Hello, how are you?",
          starred: true,
          timeago: "2 hours ago",
          seen: false,
          file: true,
          filename: "image.jpg").center(),
    ),
  ));
}
