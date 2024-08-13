import 'package:flutter/material.dart';

class RecentItemView extends StatefulWidget {
  RecentItemView(
      {super.key,
        required this.fileType,
        required this.fileName,
        required this.fileImage});

  final String fileType;
  final String fileName;
  final String fileImage;

  @override
  State<RecentItemView> createState() => _RecentItemViewState();
}

class _RecentItemViewState extends State<RecentItemView> {

  fileImage(String filename) {
    if (filename == 'docs') {
      return Image.asset("assets/lego/google_drive_main_view_lego/google-docs.webp");
    } else if (filename == 'image') {
      return Image.asset("assets/lego/google_drive_main_view_lego/photo.webp");
    } else if (filename == 'pdf') {
      return Image.asset("assets/lego/google_drive_main_view_lego/pdf.webp");
    } else if (filename == 'sheets') {
      return Image.asset(
          "assets/lego/google_drive_main_view_lego/google-sheets.webp");
    } else if (filename == 'video') {
      return Image.asset(
          "assets/lego/google_drive_main_view_lego/photographic-film.webp");
    } else {
      return Image.asset(
        "assets/lego/google_drive_main_view_lego/pdf.webp",
        color: Colors.blue,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 290,
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 20,
                        child: fileImage(widget.fileType),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        widget.fileName,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Container(
                    padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: InteractiveViewer(
                            panEnabled: false,
                            // Set it to false
                            boundaryMargin: EdgeInsets.all(80),
                            minScale: 0.5,
                            maxScale: 3,
                            child: Image.network(
                              widget.fileImage,
                              fit: BoxFit.cover,
                              width: 340,
                              height: 130,
                            )))),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'You shared this a week ago',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 2,
              )
            ],
          ),
        ));
  }
}