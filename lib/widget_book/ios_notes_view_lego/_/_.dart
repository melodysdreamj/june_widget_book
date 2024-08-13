import 'package:flutter/material.dart';

import 'folder_item.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        actions: [
          Expanded(
            child: InkWell(
              child: Container(
                padding: EdgeInsets.only(right: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Edit',
                      style: TextStyle(
                          color: Colors.deepOrange.shade300,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          child: Column(
            children: <Widget>[
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                padding:
                EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Folders',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w700,
                          fontSize: 35),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'GMAIL',
                          style:
                          TextStyle(color: Colors.grey[600], fontSize: 18),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 28,
                          color: Colors.grey[600],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 1,
                        color: Colors.grey[200],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child:
                      ListView(
                        shrinkWrap: true,
                        children: [
                          FolderItemView(
                            numberOfFiles: "2",
                            folderName: "Notes",
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'ON MY IPHONE',
                          style:
                          TextStyle(color: Colors.grey[600], fontSize: 18),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 28,
                          color: Colors.grey[600],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 1,
                        color: Colors.grey[200],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child:   ListView(
                        shrinkWrap: true,
                        children: [
                          FolderItemView(
                            numberOfFiles: "3",
                            folderName: "Reminder",
                          ),
                          FolderItemView(
                            numberOfFiles: "88",
                            folderName: "Family",
                          ),
                          FolderItemView(
                            numberOfFiles: "392",
                            folderName: "Office",
                          ),
                          FolderItemView(
                            numberOfFiles: "12",
                            folderName: "Flutter Clones",
                          ),
                          FolderItemView(
                            numberOfFiles: "43",
                            folderName: "Blogs",
                          ),
                          FolderItemView(
                            numberOfFiles: "2",
                            folderName: "Package",
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
