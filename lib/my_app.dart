import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Huruf Jepang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kuis Huruf Jepang'),
        ),
        body: Center(
          child: Text(getHuruf()),
        ),
      ),
    );
  }

  String getHuruf() {
    String result = '';
    const kanaKit = KanaKit();
    result = kanaKit.toHiragana('a');
    return result;
  }
}
