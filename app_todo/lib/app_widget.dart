import 'package:flutter/material.dart';
import 'home_page.dart';
import 'app_controller.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.indigo,
            brightness: AppController.instance.isDartTheme 
            ? Brightness.dark 
            : Brightness.light,
           ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            // '/calender: (context) => CalendarPage(),
          }
        );
      },
    );
  }
}

