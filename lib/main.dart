import 'package:flutter/material.dart';

import 'views/Footer/footer.dart';
import 'views/MainPage/main_page.dart';
import 'views/Testimonials/testimonials.dart';
import 'views/TalentDevelopment/talent_development.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pandora Gaming',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        // TODO:
        // https://www.youtube.com/watch?v=ts9n211n8ZU
        body: ListView(
          children: const [
            MainPage(),
            TalentDevelopment(),
            // Formation(),
            Testimonials(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
