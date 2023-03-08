import 'package:dailytasksui/components/app_bar.dart';
import 'package:dailytasksui/components/bottom_nav.dart';
import 'package:dailytasksui/components/constants/const.dart';
import 'package:dailytasksui/components/cus_card.dart';
import 'package:dailytasksui/components/recent_files.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarCustom(),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 220,
                      child: PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCard(
                            containerColor: kpurpleColor,
                          ),
                          CustomCard(
                            containerColor: kOrangeColor,
                          ),
                          CustomCard(
                            containerColor: kpinkColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: kblackColor,
                      dotHeight: 8.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Files",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.24, // adjust the value as needed
                      child: Column(
                        children: const [
                          RecentFiles(
                            docColor: KblueColor,
                            mainText: "Brief For Project Tutoriom",
                            sharedText: "Shared by Judi",
                            fileText: 'PDF',
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          RecentFiles(
                            docColor: kpurpleColor,
                            mainText: "Study Report",
                            sharedText: "Shared by Stewie",
                            fileText: 'PPT',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
