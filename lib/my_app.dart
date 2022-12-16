import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';
import 'package:kuishurufjepang/data_letter.dart';

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

    // Start listening to changes.
    romajiController.addListener(_convertToHiragana);
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
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Kuis Huruf Jepang'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  randomItem,
                  style: const TextStyle(fontSize: 100),
                ),
                TextField(
                  controller: romajiController,
                  textAlign: TextAlign.center,
                  onChanged: (text) {
                    _convertToHiragana();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: const TextStyle(fontSize: 100),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: const TextStyle(fontSize: 100),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _convertToHiragana() {
    const kanaKit = KanaKit();
    setState(() {
      result = kanaKit.toHiragana(romajiController.text);
    });
  }
}
