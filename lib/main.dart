import 'package:flutter/material.dart';
import 'package:personal_library2/screens/home_screen.dart';
import 'package:personal_library2/utils/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: CustomColor.primaryColor,
          secondary: CustomColor.secondaryColor,
          background: CustomColor.backgroundColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
