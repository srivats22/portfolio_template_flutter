import 'package:flutter/material.dart';
import 'package:personal_template/common.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText("About", style: Theme.of(context).textTheme.headline4,),
                const SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .50,
                  child: SelectableText(about,
                  style: Theme.of(context).textTheme.headline6,),
                ),
                const SizedBox(height: 10,),
                FloatingActionButton.extended(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/projects");
                  },
                  label: const Text("Projects"),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
