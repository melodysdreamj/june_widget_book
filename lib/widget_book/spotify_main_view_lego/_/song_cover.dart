import 'package:flutter/material.dart';

class SongCoverView extends StatefulWidget {
  SongCoverView({
    super.key,
    this.width,
    this.height,
    required this.coverImage,
    required this.caption,
  });

  final double? width;
  final double? height;
  final String coverImage;
  final String caption;

  @override
  State<SongCoverView> createState() => _SongCoverViewState();
}

class _SongCoverViewState extends State<SongCoverView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: widget.height ?? 170.0,
            width: widget.width ?? 160.0,
            child: Image.network(
              widget.coverImage,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: 150,
            height: 40,
            child: Text(
              widget.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontFamily: 'SpotifyFont',
                fontSize: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}