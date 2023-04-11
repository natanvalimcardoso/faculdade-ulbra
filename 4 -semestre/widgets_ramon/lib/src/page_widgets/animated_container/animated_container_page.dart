import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double sizeWidthOne = 100;
  Color colorTwo = Colors.blue;

  void animatedClick() {
    if (sizeWidthOne == 100) {
      setState(() {
        sizeWidthOne = 300;
      });
    } else {
      setState(() {
        sizeWidthOne = 100;
      });
    }
    if (colorTwo == Colors.blue) {
      setState(() {
        colorTwo = Colors.red;
      });
    } else {
      setState(() {
        colorTwo = Colors.blue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/animatedFlutter');
            },
            icon: const Icon(Icons.skip_next),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              color: Colors.blue,
              width: sizeWidthOne,
              height: 100,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 4),
              color: colorTwo,
              width: 100,
              height: 100,
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 4),
              color: colorTwo,
              width: sizeWidthOne,
              height: 100,
            ),
            ElevatedButton(
              child: const Text('Animar'),
              onPressed: () {
                animatedClick();
              },
            ),
          ],
        ),
      ),
    );
  }
}
