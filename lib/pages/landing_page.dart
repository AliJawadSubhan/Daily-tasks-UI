import 'package:dailytasksui/components/circle.dart';
import 'package:dailytasksui/components/constants/const.dart';
import 'package:dailytasksui/components/diamand_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KblueColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  // Container(
                  //     margin: EdgeInsets.symmetric(horizontal: 12),
                  //     child: Image(
                  //         image: AssetImage("assets/images/circlebg.png"))),
                  const CircleWidget(margin: 12),
                  const CircleWidget(margin: 20),
                  const CircleWidget(margin: 18),
                  const CircleWidget(margin: 2),
                  Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Image.asset("images/male.png"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    "Manage your Daily tasks",
                                    style: GoogleFonts.lato(
                                      fontSize: 30,
                                      color: kblackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "Work on big ideas without the busy work"
                                      .toUpperCase(),
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: const Color(0xFF141414),
                                  ),
                                ),
                                const Spacer(),
                                const DiamondContainer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, "/secondpage");
                                      },
                                      child: const Text(
                                        'SKIP',
                                        style:
                                            TextStyle(color: Color(0xFF3358D4)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
