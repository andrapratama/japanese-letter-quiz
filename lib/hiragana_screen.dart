import 'package:flutter/material.dart';
import 'package:japaneseletterquiz/compare_provider.dart';
import 'package:provider/provider.dart';

class HiraganaScreen extends StatelessWidget {
  HiraganaScreen({super.key});

  final romajiController = TextEditingController();
  final hiraganaContr = TextEditingController();
  String result = '';
  String resultGuess = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hiragana'),
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
      ),
    );
  }
}
