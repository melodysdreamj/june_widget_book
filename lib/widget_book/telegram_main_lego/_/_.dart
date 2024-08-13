import 'package:flutter/material.dart';

import 'chat_item.dart';
import 'themes.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kBlue2Color,
      elevation: 2,
      title: const Text('Telegram'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
        ),
      ],
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: kBlue4Color,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: kBlue5Color,
                    child: Text(
                      'U1',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                          color: kWhiteColor),
                    ),
                    radius: 34,
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('User 1',
                              style:
                              TextStyle(color: kWhiteColor, fontSize: 16)),
                          SizedBox(height: 5),
                          Text('+62 802 0220055',
                              style: TextStyle(color: kLightGreyColor)),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: kWhiteColor,
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group_outlined),
            title: const Text('New Group'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline_rounded),
            title: const Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined),
            title: const Text('Calls'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.accessibility_new_sharp),
            title: const Text('People Nearby'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border_rounded),
            title: const Text('Saved Messages'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            trailing: const CircleAvatar(
              backgroundColor: kBlue4Color,
              child: Text('!', style: TextStyle(color: kWhiteColor)),
              radius: 12,
            ),
            onTap: () {},
          ),
          const Divider(thickness: 1),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Invite Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Telegram Features'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget body() {
    return ListView(
      padding: const EdgeInsets.only(bottom: 100),
      children: [
        ChatItemView(
            icon: FlutterLogo(size: 40),
            initial: '',
            title: 'Flutter Indonesia',
            sender: 'User 3',
            message: 'Hello. Does anyone know how can i directly on/off',
            time: '22:14',
            mute: false,
            unread: 1280,
            color: Colors.transparent),
        ChatItemView(
            icon: FlutterLogo(size: 40),
            initial: '',
            title: 'FlutterDev',
            sender: '',
            message: 'New post on /r/flutterdev subreddit:',
            time: '9:28',
            mute: true,
            unread: 8,
            color: Colors.transparent),
        ChatItemView(
            icon: FlutterLogo(),
            initial: 'U1',
            title: 'User 2',
            sender: '',
            message: 'Hi, how are you ?',
            time: '7:34',
            mute: false,
            unread: 2,
            color: kOrangeColor),
        ChatItemView(
            icon: FlutterLogo(),
            initial: 'U2',
            title: 'User 3',
            sender: '',
            message: 'Hi, how are you ?',
            time: 'Tue',
            mute: true,
            unread: 0,
            color: kGreenPeasColor),
      ],
    );
  }

  Widget fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: kBlue3Color,
      child: const Icon(Icons.edit_rounded),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      drawer: drawer(),
      body: body(),
      floatingActionButton: fab(context),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: NewView(),
  ));
}
