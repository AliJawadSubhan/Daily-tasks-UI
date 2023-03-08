import 'package:dailytasksui/components/constants/const.dart';
import 'package:dailytasksui/components/slider.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.containerColor,
  });

  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 350,
        height: 150,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: containerColor.withOpacity(.3),
              offset: const Offset(-5.0, 20.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            Text(
              "SkillAley",
              style: GoogleFonts.lato(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              "UI Design KIT",
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: Stack(
                      children: const [
                        Positioned(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/one.jpg"),
                            // backgroundImage: AssetImage(/"image1.jpg"),
                            radius: 20,
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/two.jpg"),
                            backgroundColor: Colors.green,
                            // backgroundImage: AssetImage("image2.jpg"),
                            radius: 20,
                          ),
                        ),
                        Positioned(
                          left: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/three.jpg"),
                            backgroundColor: Colors.black,
                            radius: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: CustomSlider())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
