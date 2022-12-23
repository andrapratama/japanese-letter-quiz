import 'package:flutter/material.dart';
import 'package:japaneseletterquiz/compare_provider.dart';
import 'package:provider/provider.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final romajiController = TextEditingController();
  final hiraganaContr = TextEditingController();
  String result = '';
  String resultGuess = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Kuis Huruf Jepang'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Consumer<CompareProvider>(
                builder: (context, value, _) => Text(
                  value.guessLetter,
                  style: const TextStyle(fontSize: 100),
                ),
              ),
              Consumer<CompareProvider>(
                builder: (context, value, _) => TextField(
                  controller: romajiController,
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    value.inputUser = text;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<CompareProvider>(
                builder: (context, value, _) => Text(
                  value.result,
                  style: const TextStyle(fontSize: 100),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Text(
              //   result,
              //   style: const TextStyle(fontSize: 100),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              Consumer<CompareProvider>(
                builder: (context, value, _) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        value.guessLetter = value.randomNewLetter();
                      },
                      child: const Text('Random'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
