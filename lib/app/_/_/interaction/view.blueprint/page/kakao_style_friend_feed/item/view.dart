import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../badge_text/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ItemView extends StatefulWidget {
  ItemView({super.key});

  @override
  State<ItemView> createState() => StateChild();
}

class ItemViewState extends State<ItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        print("click list item");
      },
      leading: CircleAvatar(
        backgroundImage:
            AssetImage("assets/view/kakao_style_friend_feed/winter.jpg"),
      ),
      title: Text("Kim Toss")
          .textStyle(Theme.of(context).textTheme.bodyLarge!)
          .fontWeight(FontWeight.bold),
      subtitle: Text("Toss Bank").textStyle(Theme.of(context).textTheme.bodyMedium!),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("3:00 PM").textStyle(Theme.of(context).textTheme.bodyMedium!),
          Gap(3),
          BadgeTextView(num: Random().nextInt(100), size: 12).height(23),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: ItemView().center());
}
