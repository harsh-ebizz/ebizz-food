import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_demo/constants/color_constants.dart';
import 'package:web_demo/screens/home_screen/home_screen.dart';
import 'package:web_demo/utils/theme_utils.dart';

/// https://dribbble.com/shots/15705310-Order-History-Admin-Dashboard-Design-Bringova/attachments/7504790?mode=media
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        // maxWidth: 1200,
        // minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: const Color(0xFFF5F5F5),
        ),
      ),
      theme: ThemeUtils.lightTheme,
      initialRoute: "/",
      home: const HomeScreen(),
    );
  }
}
