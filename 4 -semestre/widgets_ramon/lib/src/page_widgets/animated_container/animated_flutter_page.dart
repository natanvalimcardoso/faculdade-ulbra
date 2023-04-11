import 'package:flutter/material.dart';

class AnimatedFlutterPage extends StatefulWidget {
  const AnimatedFlutterPage({Key? key}) : super(key: key);

  @override
  State<AnimatedFlutterPage> createState() => _AnimatedFlutterPageState();
}

class _AnimatedFlutterPageState extends State<AnimatedFlutterPage> {
  double topOne = 120;
  double topTwo = 300;
  double topThree = 540;

  double leftOne = 90;
  double leftTwo = 10;
  double leftThree = 170;

  Color colorOne = Colors.red;
  Color colorTwo = Colors.black;
  Color colorThree = Colors.blue;

  double heightOne = 10;
  double heightTwo = 200;
  double heightThree = 30;

  double widthOne = 30;
  double widthTwo = 150;
  double widthThree = 160;

  void animationClickPositioned() {
    setState(() {
      if (leftOne == 90) {
        leftOne = 50;
        leftTwo = 60;
        leftThree = 60;
        topOne = 100;
        topTwo = 100;
        topThree = 140;

        colorOne = Colors.purple;
        colorTwo = Colors.purple;
        colorThree = Colors.purple;

        heightOne = 120;
        heightTwo = 30;
        heightThree = 30;

        widthOne = 30;
        widthTwo = 60;
        widthThree = 50;
      } else {
        heightOne = 10;
        heightTwo = 200;
        heightThree = 30;

        widthOne = 30;
        widthTwo = 150;
        widthThree = 160;

        leftOne = 90;
        leftTwo = 10;
        leftThree = 170;

        topOne = 120;
        topTwo = 300;
        topThree = 540;

        colorOne = Colors.red;
        colorTwo = Colors.black;
        colorThree = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            AnimatedPositioned(
              curve:  Curves.bounceOut,
              duration: const Duration(seconds: 4),
              left: leftOne,
              top: topOne,
              child: AnimatedContainer(
                duration: const Duration(seconds: 3),
                height: heightOne,
                width: widthOne,
                color: colorOne,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              left: leftTwo,
              top: topTwo,
              child: AnimatedContainer(
                curve: Curves.bounceOut,
                duration: const Duration(seconds: 4),
                height: heightTwo,
                width: widthTwo,
                color: colorTwo,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              left: leftThree,
              top: topThree,
              child: AnimatedContainer(
                duration: const Duration(seconds: 4),
                height: heightThree,
                width: widthThree,
                color: colorThree,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: const Text('Animate'),
                  onPressed: () {
                    animationClickPositioned();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
