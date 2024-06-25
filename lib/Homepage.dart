import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int n1 = 6;
  int n2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('تطابق الصوره'),
          backgroundColor: Colors.indigo[400],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              n1 == n2 ? 'احسنت' : ' حاول مره اخرى',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          n1 = Random().nextInt(9) + 1;
                        });
                      },
                      child: Image.asset('images/image-$n1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          n2 = Random().nextInt(9) + 1;
                        });
                      },
                      child: Image.asset('images/image-$n2.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
