import 'package:dailytasksui/components/constants/const.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 100,
          decoration: BoxDecoration(
              color: kwhiteColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ]),
          child: const Icon(
            Icons.menu,
            color: kblackColor,
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 100,
              decoration: const BoxDecoration(
                color: kwhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 0.1,
                  )
                ],
                shape: BoxShape.circle,
              ),
            ),
            IconButton(
              onPressed: () {
                print('changing screen');
                Navigator.pushNamed(context, '/thirdpage');
              },
              icon: const Icon(Icons.notifications),
              color: kblackColor,
            ),
            Positioned(
              right: 35,
              top: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: kpinkColor, shape: BoxShape.circle),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
