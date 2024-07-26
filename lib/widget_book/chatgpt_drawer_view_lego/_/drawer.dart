import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Visibility(
                      visible: true,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: const Color(0xFF40414f)),
                              ),
                              child: ListTile(
                                onTap: () {},
                                leading: const Icon(
                                  Icons.add,
                                ),
                                title: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  'New Chat',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Visibility(
                    //   visible: true,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       border: Border.all(color: const Color(0xFF40414f)),
                    //     ),
                    //     child: ListTile(
                    //       leading: const Icon(
                    //         Icons.add,
                    //       ),
                    //       title: Text(
                    //         overflow: TextOverflow.ellipsis,
                    //         maxLines: 1,
                    //         'New Chat',
                    //         style: fixedStyle,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 1,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.delete_outline,
                  ),
                  title: Text('Clear Conversation'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.nightlight_outlined,
                  ),
                  title: Text(
                    'Dark Mode',
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.discord,
                  ),
                  title: Text('OpenAI Discord'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.open_in_new,
                  ),
                  title: Text('Updates and FAQ'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_outlined,
                  ),
                  title: Text('Log out'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: DrawerView(),
  ));
}
