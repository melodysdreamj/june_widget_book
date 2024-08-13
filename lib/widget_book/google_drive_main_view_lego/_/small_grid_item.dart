import 'package:flutter/material.dart';

class SmallGridItemView extends StatefulWidget {
  SmallGridItemView(
      {super.key,
        required this.fileType,
        required this.fileName,
        required this.fileImage,
        required this.isFolder});

  final String fileType;
  final String fileName;
  final String fileImage;
  final bool isFolder;

  @override
  State<SmallGridItemView> createState() => _SmallGridItemViewState();
}

class _SmallGridItemViewState extends State<SmallGridItemView> {

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
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          height: 290,
          padding: EdgeInsets.only(bottom: 5, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.isFolder
                  ? Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                child: Container(
                    padding: EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 10),
                    child: Icon(
                      Icons.folder,
                      size: 120,
                      color: Colors.grey[500],
                    )),
              )
                  : Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Container(
                    padding:
                    EdgeInsets.only(top: 30, left: 20, right: 20),
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
                padding: EdgeInsets.only(top: 10, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.isFolder
                        ? SizedBox.shrink()
                        : Container(
                        height: 25,
                        width: 20,
                        child: fileImage(widget.fileType)),
                    Text(
                      widget.fileName,
                      style: TextStyle(fontSize: 13),
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}