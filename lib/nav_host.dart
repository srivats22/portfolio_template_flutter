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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: 5,
                runSpacing: 5,
                alignment: WrapAlignment.center,
                children: [
                  ChoiceChip(
                    label: const Text("Home"),
                    selected: selectedIndex == 0,
                    onSelected: (bool value){
                      if(value){
                        setState(() {
                          selectedIndex = 0;
                        });
                      }
                      else{
                        setState(() {
                          selectedIndex = 0;
                        });
                      }
                    },
                  ),
                  ChoiceChip(
                    label: const Text("About"),
                    selected: selectedIndex == 1,
                    onSelected: (bool value){
                      if(value){
                        setState(() {
                          selectedIndex = 1;
                        });
                      }
                    },
                  ),
                  ChoiceChip(
                    label: const Text("Contact"),
                    selected: selectedIndex == 2,
                    onSelected: (bool value){
                      if(value){
                        setState(() {
                          selectedIndex = 2;
                        });
                      }
                    },
                  ),
                ],
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
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
                  FooterIcon(FontAwesomeIcons.instagram, "Instagram", instagram),
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
}
