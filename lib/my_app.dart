import 'package:flutter/material.dart';
import 'package:japaneseletterquiz/quiz_screen.dart';
import 'package:japaneseletterquiz/hiragana_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Japanese Letter'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Hiragana'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HiraganaScreen()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Quiz'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
