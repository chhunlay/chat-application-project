import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../states/lib.dart';
import 'chat_detail.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  void initState() {
    super.initState();
    chatState.refreshChatsForCurrentUser();
  }

  void callChatDetailScreen(BuildContext context, String name, String uid) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) =>
                ChatDetail(friendUid: uid, friendName: name)));
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (BuildContext context) => CustomScrollView(
              slivers: [
                const CupertinoSliverNavigationBar(
                  largeTitle: Text("Chats"),
                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        chatState.messages.values.toList().map((data) {
                  return CupertinoListTile(
                    title: Text(data['friendName']),
                    subtitle: Text(data['msg']),
                    onTap: () => callChatDetailScreen(
                        context, data['friendName'], data['friendUid']),
                  );
                }).toList()))
              ],
            ));
  }
}
