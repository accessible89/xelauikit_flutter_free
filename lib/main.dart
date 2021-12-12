import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xelauikit_flutter_free/screens/components_screen.dart';
import 'package:xelauikit_flutter_free/xelauikit/xela_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: XelaColor.Blue3,
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const ComponentsScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}

