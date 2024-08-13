import 'package:flutter/material.dart';
import 'package:june_flow_util/june_flow_util.dart';
import 'package:styled_widget/styled_widget.dart';

import 'item.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PreferredSize(
                preferredSize: Size.fromHeight(70.0),
                child: SliverAppBar(
                  toolbarHeight: 80,
                  pinned: false,
                  backgroundColor: Colors.white,
                  title: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search in Mail",
                            border: InputBorder.none,
                            icon: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(Icons.dehaze)),
                            suffixIcon: Container(
                              height: 5,
                              width: 5,
                              margin: EdgeInsets.all(5),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage: NetworkImage(
                                      "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              )
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text('Primary'),
              ),
              ListView(
                children: [
                  ItemView(
                      username: "Tony",
                      useravatar:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                      avatarcolor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Assignment",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: true),
                  ItemView(
                      username: "Anoty Start",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.greenAccent,
                      subject: "Freshworl",
                      timeago: "Aug 23",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Joan Louji",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.yellow,
                      subject: "(no subject)",
                      timeago: "Aug 23",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body: "no Body",
                      starred: false),
                  ItemView(
                      username: "Rion",
                      useravatar: null,
                      avatarcolor: Colors.redAccent,
                      subject: "me, Mail",
                      timeago: "Aug 21",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Address not Found",
                      starred: true),
                  ItemView(
                      username: "Louji",
                      useravatar: null,
                      avatarcolor: Colors.orangeAccent,
                      subject: "Twitter",
                      timeago: "Aug 20",
                      seen: true,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Verification sent",
                      starred: false),
                  ItemView(
                      username: "Racheal",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.blue,
                      subject: "Hangout Chat",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Chats Archieve",
                      starred: false),
                  ItemView(
                      username: "Isac",
                      useravatar: null,
                      avatarcolor: Colors.greenAccent,
                      subject: "Intern Chat",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "Chat with us. visit this mail",
                      starred: true),
                  ItemView(
                      username: "Johanna",
                      useravatar:
                      "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                      avatarcolor: Colors.yellow,
                      subject: "Status of your Job Application",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body: "We have updated your status of Job Applicationn",
                      starred: false),
                  ItemView(
                      username: "Freshers",
                      useravatar: null,
                      avatarcolor: Colors.redAccent,
                      subject: "me, Susmithani",
                      timeago: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "Hi, I am sending this mail to make you know that you didn't",
                      starred: false),
                  ItemView(
                      username: "UGC",
                      useravatar:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                      avatarcolor: Colors.orangeAccent,
                      subject: "Plus",
                      timeago: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body: "DB Config",
                      starred: false),
                  ItemView(
                      username: "Alka University",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Find me",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.greenAccent,
                      subject:
                      "Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "hacker earth",
                      useravatar: null,
                      avatarcolor: Colors.yellow,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: true),
                  ItemView(
                      username: "Tony Start",
                      useravatar: null,
                      avatarcolor: Colors.redAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Spidy",
                      useravatar:
                      'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                      avatarcolor: Colors.orangeAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Rion Louji",
                      useravatar: null,
                      avatarcolor: Colors.blueAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                  ItemView(
                      username: "Joan Louji",
                      useravatar:
                      "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                      avatarcolor: Colors.greenAccent,
                      subject: "Job | Software Developer",
                      timeago: "Aug 26",
                      seen: false,
                      file: false,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: true),
                  ItemView(
                      username: "Anntony",
                      useravatar: null,
                      avatarcolor: Colors.yellow,
                      subject:
                      "Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer Job | Software Developer",
                      timeago: "Aug 26",
                      seen: true,
                      file: true,
                      filename: "Screenshot_2020",
                      body:
                      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                      starred: false),
                ],
              ).expanded(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
