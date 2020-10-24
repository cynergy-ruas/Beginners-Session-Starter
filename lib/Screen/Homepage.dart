import 'dart:async';
import 'package:nerd_man/Screen/Buildings.dart';
import 'package:nerd_man/Screen/clouds.dart';
import 'package:nerd_man/Screen/superman.dart';
import 'package:flutter/material.dart';
import 'Scoreboard.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static double birdYAxis = 0;
  double time = 0;
  double height = 0;
  int best = 0;
  int score = 0;
  double initHeight = birdYAxis;
  bool hasGameStarted = false;

  static double barrierX1 = 1;
  double barrierX2 = 0;
  static const double barrierY1 = 1.1;

  void reset() {
    // logic to reset the score
  }

  void jump() {
    // logic to make the superman jump
  }

  double increaseXValue(double barrierXX) {
    // logic to change the barrier height
  }

  void gameOver() {
    setState(() {
      reset();
    });
  }

  void startGame() {
    // logic to start the game
  }

  void cancleTheGame(Timer timer) {
    // logic to cancel the game
  }

  void calcNewHeight() {
    // logic to change the new height in game
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (hasGameStarted) {
          jump();
        } else {
          startGame();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      alignment: Alignment(0, birdYAxis),
                      color: Colors.amber,
                      duration: const Duration(),
                      // child: superman(),
                    ),
                    Container(
                      alignment: const Alignment(0, -0.3),
                      child: hasGameStarted
                          ? const Text('')
                          : const Text(
                              'T A P  TO  P L A Y',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                    ),
                    AnimatedContainer(
                      alignment: Alignment(barrierX1, barrierY1),
                      duration: const Duration(),
                      // child: Building(),
                    ),
                    AnimatedContainer(
                      alignment: Alignment(barrierX1, -barrierY1),
                      duration: const Duration(),
                      // child: Clouds(),
                    ),
                    AnimatedContainer(
                      alignment: Alignment(barrierX2, barrierY1),
                      duration: const Duration(),
                      // child: Building(),
                    ),
                    AnimatedContainer(
                      alignment: Alignment(barrierX2, -barrierY1),
                      duration: const Duration(),
                      // child: Clouds(),
                    ),
                    Center(
                      child: Text("Logic for the game"),
                    ),
                  ],
                )),
            Container(
              height: 15,
              color: Colors.amber[800],
            ),
            Expanded(
              child: Container(
                  color: Colors.amber[300],
                  child: Center(child: Text("Logic for the scoreboard"))),
            ),
          ],
        ),
      ),
    );
  }
}
