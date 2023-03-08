import 'package:dailytasksui/components/constants/const.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.home,
            size: 30,
            color: kpinkColor,
          ),
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: kpinkColor,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Icon(
            Icons.heart_broken,
            size: 30,
            color: Colors.grey,
          ),
          const Icon(
            Icons.person,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
