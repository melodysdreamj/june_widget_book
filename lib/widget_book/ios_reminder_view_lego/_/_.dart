import 'package:flutter/material.dart';

import 'reminder_item.dart';
import 'status_item.dart';

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
                          color: Colors.blue,
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
                padding:
                EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.settings_voice),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding:
                  EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
                  child: StatusItemView()),
              Container(
                padding:
                EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text('My List', style: TextStyle(color: Colors.black, fontSize: 29),),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: ListView(
                          // physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(bottom: kFloatingActionButtonMargin + 48),
                          children: [
                            ReminderItemView(
                              numberOfTodos: "3",
                              ReminderName: "Reminder",
                              tagColor: Colors.orange,
                            ),
                            ReminderItemView(
                              numberOfTodos: "88",
                              ReminderName: "Family",
                              tagColor: Colors.red,
                            ),
                            ReminderItemView(
                                numberOfTodos: "392",
                                ReminderName: "Office",
                                tagColor: Colors.green
                            ),
                            ReminderItemView(
                                numberOfTodos: "12",
                                ReminderName: "Flutter Clones",
                                tagColor: Colors.yellow
                            ),
                            ReminderItemView(
                                numberOfTodos: "43",
                                ReminderName: "Blogs",
                                tagColor: Colors.blueGrey
                            ),
                            ReminderItemView(
                                numberOfTodos: "2",
                                ReminderName: "Package",
                                tagColor: Colors.green
                            ),
                            ReminderItemView(
                                numberOfTodos: "62",
                                ReminderName: "To do on wednesday",
                                tagColor: Colors.yellow
                            ),
                          ],

                        )
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
