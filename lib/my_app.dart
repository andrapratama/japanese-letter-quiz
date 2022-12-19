import 'package:flutter/material.dart';
import 'package:japaneseletterquiz/compare_provider.dart';
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
        // create: (BuildContext context) {
        //   CompareProvider;
        // },
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
                  Consumer<CompareProvider>(
                    builder: (context, value, _) => Text(
                      value.randomLeterGenerate,
                      style: const TextStyle(fontSize: 100),
                    ),
                  ),
                  Consumer<CompareProvider>(
                    builder: (context, value, _) => TextField(
                      controller: romajiController,
                      textAlign: TextAlign.center,
                      onChanged: (text) {
                        value.result = text;
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
                  Text(
                    result,
                    style: const TextStyle(fontSize: 100),
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
                            value.setRandomLeter;
                          },
                          child: const Text('Try Again'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
