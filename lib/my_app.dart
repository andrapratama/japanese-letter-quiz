import 'package:flutter/material.dart';
import 'package:japaneseletterquiz/compare_provider.dart';
import 'package:japaneseletterquiz/quiz.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Huruf Jepang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<CompareProvider>(
        create: (_) => CompareProvider(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Kuis Huruf Jepang'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Hiragana'),
                    subtitle: Text('Hiragana'),
                    trailing: Text('Hiragana'),
                  ),
                  const Divider(thickness: 2),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Quiz(),
                        ),
                      );
                    },
                    title: const Text('Quiz'),
                    subtitle: const Text('Quiz'),
                    trailing: const Text('Quiz'),
                  ),
                  const Divider(thickness: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
