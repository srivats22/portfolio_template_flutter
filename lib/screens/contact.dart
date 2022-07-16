import 'package:flutter/material.dart';
import 'package:personal_template/common.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              children: [
                SelectableText("Contact", style: Theme.of(context).textTheme.headline4,),
                const SizedBox(height: 10,),
                const SelectableText("""
                You can reach me via email at
                """),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    final Uri emailSchema = Uri(
                      scheme: 'mailto',
                      path: email,
                    );
                    launchUrl(emailSchema);
                  },
                  child: Text(email,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    decoration: TextDecoration.underline,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
