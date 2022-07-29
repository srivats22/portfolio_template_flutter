import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_template/common.dart';
import 'package:personal_template/components/footer_icon.dart';
import 'package:personal_template/screens/about.dart';
import 'package:personal_template/screens/contact.dart';
import 'package:personal_template/screens/home.dart';

class NavHost extends StatefulWidget {
  const NavHost({Key? key}) : super(key: key);

  @override
  State<NavHost> createState() => _NavHostState();
}

class _NavHostState extends State<NavHost> {
  int selectedIndex = 0;

  final _pages = const [
    Home(),
    About(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MediaQuery.of(context).size.width > 500 ?
        PreferredSize(preferredSize: const Size.fromHeight(80), child: desktopAppBar()) :
        PreferredSize(preferredSize: const Size.fromHeight(80), child: mobileAppBar()),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: _pages.elementAt(selectedIndex),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  FooterIcon(
                      FontAwesomeIcons.instagram, "Instagram", instagram),
                  FooterIcon(FontAwesomeIcons.linkedinIn, "LinkedIn", linkedIn),
                  FooterIcon(FontAwesomeIcons.twitter, "Twitter", twitter),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileAppBar() {
    return AppBar(
      title: Text(name),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            icon: selectedIndex == 0 ? const Icon(Icons.home) :
            const Icon(Icons.home_outlined),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            icon: selectedIndex == 1 ? const Icon(Icons.info) :
            const Icon(Icons.info_outline),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            icon: selectedIndex == 2 ? const Icon(Icons.mark_email_unread)
            : const Icon(Icons.mark_email_unread_outlined),
          ),
        ),
      ],
    );
  }

  Widget desktopAppBar() {
    return AppBar(
      title: Text(name),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Text(
              "Home",
              style: TextStyle(
                  color: selectedIndex == 0 ? Colors.teal : Colors.grey),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Text(
              "About",
              style: TextStyle(
                  color: selectedIndex == 1 ? Colors.teal : Colors.grey),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Text(
              "Contact",
              style: TextStyle(
                  color: selectedIndex == 2 ? Colors.teal : Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
