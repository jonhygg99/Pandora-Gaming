import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

import 'testimonial_box.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDBlack,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80.0, right: 80, left: 80, bottom: 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Our beloved\nmentors.',
                  style: TextStyle(
                      color: kWhite, fontWeight: FontWeight.bold, fontSize: 80),
                ),
                Container(height: 40),
                const Text(
                  'We are very solid online.\n'
                  'Here are some of our members testimonials.',
                  style:
                      TextStyle(color: kDarkWhite, fontSize: 20, height: 1.5),
                )
              ],
            ),
            Container(width: 80),
            Row(
              children: [
                Column(
                  children: const [
                    TestimonialBox(
                      testimonial:
                          'Young people with innovative ideas, with a bright future, who are very passionate in the world of eSports.',
                      person: 'Alvaro Quintana',
                      company: 'Professional player',
                    ),
                    TestimonialBox(
                      testimonial:
                          'Young people with innovative ideas, with a bright future, who are very passionate in the world of eSports.',
                      person: 'Alvaro Quintana',
                      company: 'Professional player',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    TestimonialBox(
                      testimonial:
                          'Young people with innovative ideas, with a bright future, who are very passionate in the world of eSports.',
                      person: 'Alvaro Quintana',
                      company: 'Professional player',
                    ),
                    TestimonialBox(
                      testimonial:
                          'Young people with innovative ideas, with a bright future, who are very passionate in the world of eSports.',
                      person: 'Alvaro Quintana',
                      company: 'Professional player',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

