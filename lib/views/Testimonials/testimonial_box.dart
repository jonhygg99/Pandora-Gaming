import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

class TestimonialBox extends StatelessWidget {
  final String testimonial;
  final String person;
  final String company;
  const TestimonialBox(
      {required this.testimonial,
        this.person = '',
        this.company = '',
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        color: kDarkBlue,
        width: 450,
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                testimonial,
                style:
                const TextStyle(color: kDarkWhite, fontSize: 18, height: 2),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person,
                    style: const TextStyle(color: kWhite, fontSize: 22),
                  ),
                  Container(height: 10),
                  Text(
                    company,
                    style: const TextStyle(color: kDarkWhite, fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}