import 'package:flutter/material.dart';
import 'package:portfolio_app/mobile/landing_page_mobile.dart';
import 'package:portfolio_app/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return const LandingPageWeb();
        } else {
          return const LandingPageMobile();
        }
      },
    ));
  }
}