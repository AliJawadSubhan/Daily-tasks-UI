import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles(
      {super.key,
      required this.docColor,
      required this.mainText,
      required this.sharedText,
      required this.fileText});

  final Color docColor;
  final String mainText;
  final String sharedText;
  final String fileText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
              color: docColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(38),
              ),
            ),
            child: Center(
              child: Text(
                fileText,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(sharedText),
            ],
          )
        ],
      ),
    );
  }
}
