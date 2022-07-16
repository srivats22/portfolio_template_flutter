import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

import '../common.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              children: [
                const AvatarView(
                  radius: 50,
                  avatarType: AvatarType.CIRCLE,
                  imagePath: "assets/pic.jpeg",
                ),
                const SizedBox(height: 10,),
                SelectableText("$name goes here",
                style: Theme.of(context).textTheme.headline5,),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .50,
                  child: const Divider(),
                ),
                SelectableText("Add your tagline here",
                style: Theme.of(context).textTheme.headline6,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
