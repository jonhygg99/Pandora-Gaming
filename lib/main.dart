import 'package:flutter/material.dart';

import 'views/header/footer.dart';
import 'views/header/formation.dart';
import 'views/header/header.dart';
import 'views/header/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pandora Gaming',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: ListView(
          children: const [
            Header(),
            Services(),
            Formation(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
