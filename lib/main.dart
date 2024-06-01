import 'package:flutter/material.dart';
import 'package:portfolio/colors_app.dart';
import 'package:portfolio/home_page.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: MaterialApp(
        title: 'Portfólio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: AppColors.backgroundColor,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: AppColors.backgroundColor,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        home: const HomePage(),
      ),
    );
  }
}
