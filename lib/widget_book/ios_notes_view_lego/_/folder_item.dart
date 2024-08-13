import 'package:flutter/material.dart';

class FolderItemView extends StatefulWidget {
  FolderItemView(
      {super.key, required this.folderName, required this.numberOfFiles});

  final String folderName;
  final String numberOfFiles;

  @override
  State<FolderItemView> createState() => _FolderItemViewState();
}

class _FolderItemViewState extends State<FolderItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.folder_open_outlined,
                          color: Colors.deepOrange.shade300,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        widget.folderName,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.numberOfFiles),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: FolderItemView(
      numberOfFiles: "2",
      folderName: "Notes",
    )
  ));
}
