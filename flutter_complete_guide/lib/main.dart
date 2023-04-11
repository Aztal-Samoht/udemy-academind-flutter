import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "from scratch",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.amber),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questionIndex;
  @override
  void initState() {
    questionIndex = 0;
    super.initState();
  }

  void answerQuestion(String s) {
    setState(
      () {
        if (questionIndex == 0) questionIndex++;
        print("questionIndex: $questionIndex");
        print(s);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite collor?",
      "what's your favorite animal",
    ];
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(questions[questionIndex]),
              TextButton(
                  onPressed: () {
                    answerQuestion('1');
                  },
                  child: Text('answer 1')),
              TextButton(
                  onPressed: () {
                    answerQuestion('2');
                  },
                  child: Text('answer 2')),
              TextButton(
                  onPressed: () {
                    answerQuestion('3');
                  },
                  child: Text('answer 3')),
            ],
          ),
        ),
        appBar: AppBar(title: Text("built from scrach")),
      ),
    );
  }
}
