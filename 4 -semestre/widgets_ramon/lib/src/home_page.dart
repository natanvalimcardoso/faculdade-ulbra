import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.8,
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: SpeedDial(
                  animatedIcon: AnimatedIcons.menu_close,
                  spacing: 10,
                  backgroundColor: const Color(0xff8c20e1),
                  children: [
                    SpeedDialChild(
                      child: const Icon(Icons.library_add_sharp),
                      label: 'Stack',
                      onTap: () {
                        Navigator.pushNamed(context, '/stack');
                      },
                    ),
                    SpeedDialChild(
                      child: const Icon(Icons.flare),
                      label: 'AnimatedCointainer',
                      onTap: () {
                        Navigator.pushNamed(context, '/animatedContainer');
                      },
                    ),
                    SpeedDialChild(
                      child: const Icon(Icons.picture_in_picture),
                      label: 'Positioned',
                      onTap: () {
                        Navigator.pushNamed(context, '/positioned');
                      },
                    ),
                    SpeedDialChild(
                      child: const Icon(Icons.space_bar),
                      label: 'Spacer',
                      onTap: () {
                        Navigator.pushNamed(context, '/spacer');
                      },
                    ),
                    SpeedDialChild(
                      child: const Icon(Icons.vertical_align_center),
                      label: 'Center',
                      onTap: () {
                        Navigator.pushNamed(context, '/center');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
