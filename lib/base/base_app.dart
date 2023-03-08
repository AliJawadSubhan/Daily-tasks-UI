import 'package:dailytasksui/pages/landing_page.dart';
import 'package:dailytasksui/pages/second_page.dart';
import 'package:dailytasksui/pages/third_page.dart';
import 'package:flutter/material.dart';

class DailyTasks extends StatelessWidget {
  const DailyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LandingScreen(),
        '/secondpage': (context) => SecondPage(),
        '/thirdpage': (context) => ThirdPage(),
      },
      initialRoute: '/',
    );
  }
}
