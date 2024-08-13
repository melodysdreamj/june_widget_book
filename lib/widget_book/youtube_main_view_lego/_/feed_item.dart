import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FeedItemView extends StatefulWidget {
  FeedItemView({
    super.key,
    required this.thumbNail,
    required this.viewCount,
    required this.timeAgo,
    required this.videoTitle,
    required this.chanel_name,
    required this.chanel_image_url,
  });

  final String thumbNail;
  final String viewCount;
  final String timeAgo;
  final String videoTitle;
  final String chanel_name;
  final String chanel_image_url;

  @override
  State<FeedItemView> createState() => _FeedItemViewState();
}

class _FeedItemViewState extends State<FeedItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 210,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.thumbNail),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, right: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "10:30",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                ),
              ),
            ),
          ),
          Gap(5),
          Container(
            margin: EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image(
                          image: NetworkImage(widget.chanel_image_url),
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container()
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.videoTitle,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: "Helvetica"),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                widget.chanel_name,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    fontFamily: "Helvetica",
                                    color: Colors.grey[700]),
                              ),
                              Text(
                                " ∙ ",
                              ),
                              Text(
                                widget.viewCount + " views",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    fontFamily: "Helvetica",
                                    color: Colors.grey[700]),
                              ),
                              Text(
                                " ∙ ",
                              ),
                              Text(
                                widget.timeAgo + " ago",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    fontFamily: "Helvetica",
                                    color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}