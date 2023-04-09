import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets - Ramon'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                children: [
                  SpeedDialChild(
                    child: const Icon(Icons.add),
                    label: 'Stack',
                    onTap: () {
                      Navigator.pushNamed(context, '/stack');
                    },
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.edit),
                    label: 'AnimatedCointainer',
                    onTap: () {
                      Navigator.pushNamed(context, '/animatedContainer');
                    },
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.delete),
                    label: 'Positioned',
                    onTap: () {
                      Navigator.pushNamed(context, '/positioned');
                    },
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.save),
                    label: 'Spacer',
                    onTap: () {
                      Navigator.pushNamed(context, '/spacer');
                    },
                  ),
                  SpeedDialChild(
                    child: const Icon(Icons.cancel),
                    label: 'Center',
                    onTap: () {
                      Navigator.pushNamed(context, '/center');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
