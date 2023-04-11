import 'package:flutter/material.dart';

import 'src/home_page.dart';
import 'src/page_widgets/animated_container/animated_container_page.dart';
import 'src/page_widgets/animated_container/animated_flutter_page.dart';
import 'src/page_widgets/center/center_dois_page.dart';
import 'src/page_widgets/center/center_page.dart';
import 'src/page_widgets/positioned/positioned_page.dart';
import 'src/page_widgets/spacer/spacer_page.dart';
import 'src/page_widgets/stack_widget/stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/stack': (context) => const StackPage(),
        '/animatedContainer': (context) =>  const AnimatedContainerPage(),
        '/animatedFlutter': (context) =>  const AnimatedFlutterPage(),
        '/positioned': (context) => const PositionedPage(),
        '/spacer': (context) => const SpacerPage(),
        '/center': (context) => const CenterPage(),
        '/centerDois': (context) => const CenterDoisPage(),
      },
    );
  }
}
