import 'package:dailytasksui/components/constants/const.dart';
import 'package:flutter/material.dart';

class DiamondContainer extends StatelessWidget {
  const DiamondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.white,
          width: 4,
        ),
      ),
      child: ClipPath(
        clipper: DiamondClipper(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: kpinkColor,
          ),
          child: const Icon(
            Icons.arrow_right,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}

class DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(DiamondClipper oldClipper) => false;
}
