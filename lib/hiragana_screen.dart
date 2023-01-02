import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';

class HiraganaScreen extends StatelessWidget {
  const HiraganaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const kanaKit = KanaKit();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hiragana'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kanaKit.toHiragana('a')),
                  Text(kanaKit.toHiragana('i')),
                  Text(kanaKit.toHiragana('u')),
                  Text(kanaKit.toHiragana('e')),
                  Text(kanaKit.toHiragana('o')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('a'),
                  Text('i'),
                  Text('u'),
                  Text('e'),
                  Text('o'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kanaKit.toHiragana('ka')),
                  Text(kanaKit.toHiragana('ki')),
                  Text(kanaKit.toHiragana('ku')),
                  Text(kanaKit.toHiragana('ke')),
                  Text(kanaKit.toHiragana('ko')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('ka'),
                  Text('ki'),
                  Text('ku'),
                  Text('ke'),
                  Text('ko'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kanaKit.toHiragana('sa')),
                  Text(kanaKit.toHiragana('shi')),
                  Text(kanaKit.toHiragana('su')),
                  Text(kanaKit.toHiragana('se')),
                  Text(kanaKit.toHiragana('so')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('sa'),
                  Text('shi'),
                  Text('su'),
                  Text('se'),
                  Text('so'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kanaKit.toHiragana('ta')),
                  Text(kanaKit.toHiragana('chi')),
                  Text(kanaKit.toHiragana('tsu')),
                  Text(kanaKit.toHiragana('te')),
                  Text(kanaKit.toHiragana('to')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('ta'),
                  Text('chi'),
                  Text('tsu'),
                  Text('te'),
                  Text('to'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kanaKit.toHiragana('na')),
                  Text(kanaKit.toHiragana('ni')),
                  Text(kanaKit.toHiragana('nu')),
                  Text(kanaKit.toHiragana('ne')),
                  Text(kanaKit.toHiragana('no')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('na'),
                  Text('ni'),
                  Text('nu'),
                  Text('ne'),
                  Text('no'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
