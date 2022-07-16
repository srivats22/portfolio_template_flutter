import 'package:flutter/material.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'dart:math' as math;

import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String projectName, projectDesc, projectUrl;
  final bool isInitiallyExpanded;
  const ProjectCard(
      this.projectName, this.projectDesc, this.projectUrl, this.isInitiallyExpanded,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionWidget(
        initiallyExpanded: isInitiallyExpanded,
        titleBuilder:
            (double animationValue, _, bool isExpaned, toogleFunction) {
          return InkWell(
              onTap: () => toogleFunction(animated: true),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Text(projectName)),
                    Transform.rotate(
                      angle: math.pi * animationValue / 2,
                      alignment: Alignment.center,
                      child: const Icon(Icons.arrow_right, size: 40),
                    )
                  ],
                ),
              ));
        },
        content: Column(
          children: [
            SelectableText(projectDesc),
            const SizedBox(height: 10,),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            OutlinedButton(
              onPressed: (){
                launchUrl(Uri.parse(projectUrl));
              },
              child: const Text("View Project"),
            ),
          ],
        )
    );
  }
}
