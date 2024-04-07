import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("Friends")
              .textStyle(Theme.of(context).textTheme.titleLarge!)
              .fontWeight(FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search,
                    size: 30,
                    color: Theme.of(context).textTheme.bodyMedium!.color!)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline,
                    size: 30,
                    color: Theme.of(context).textTheme.bodyMedium!.color!)),
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          if (index == 4) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
                Text("Contacts")
                    .textStyle(Theme.of(context).textTheme.bodySmall!)
                    .textColor(Colors.grey.withOpacity(1)),
                Gap(10)
              ],
            ).padding(horizontal: 15, top: 10);
          }

          return ItemView();
        }),
        floatingActionButton: FloatingActionButtonKit(),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}