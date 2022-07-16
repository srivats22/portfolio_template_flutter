import 'package:flutter/material.dart';
import 'package:personal_template/components/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ProjectCard("Project 1", "Project Description", "", true),
              Divider(indent: 20, endIndent: 20,),
              ProjectCard("Project 2", "Project Description", "", false),
              Divider(indent: 20, endIndent: 20,),
              ProjectCard("Project 3", "Project Description", "", false),
            ],
          ),
        ),
      ),
    );
  }
}
