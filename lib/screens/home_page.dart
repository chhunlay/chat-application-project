
import 'package:chats_applications/screens/chats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calls.dart';
import 'people.dart';
import 'settings.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var screens = [Chats(), Calls(), People(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            BottomNavigationBarItem(
              label: "Calls",
              icon: Icon(CupertinoIcons.phone),
            ),
            BottomNavigationBarItem(
              label: "People",
              icon: Icon(CupertinoIcons.person_alt_circle),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(CupertinoIcons.settings_solid),
            )
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}
