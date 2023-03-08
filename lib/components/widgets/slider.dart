import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var rating = 12.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      thumbColor: Colors.white,
      value: rating,
      label: rating.toString(),
      onChanged: (newRating) {
        setState(() {
          rating = newRating;
        });
      },
      min: 0,
      max: 25,
    );
  }
}
