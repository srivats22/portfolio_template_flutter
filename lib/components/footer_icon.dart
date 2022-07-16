import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterIcon extends StatelessWidget {
  final IconData iconData;
  final String tooltip, url;
  const FooterIcon(this.iconData, this.tooltip, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        launchUrl(Uri.parse(url));
      },
      icon: FaIcon(iconData),
      tooltip: tooltip,
    );
  }
}
