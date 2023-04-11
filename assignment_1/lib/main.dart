// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String aString = '';
  @override
  void initState() {
    aString = 'bodys';
    super.initState();
  }

  void changeText() {
    aString = 'still body';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('appbar')),
        body: Column(
          children: [
            TextControl(changeText),
            Text(aString),
          ],
        ),
      ),
    );
  }
}

class TextControl extends StatelessWidget {
  const TextControl(this.func, {super.key});
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: func, child: Text('change'));
  }
}
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
