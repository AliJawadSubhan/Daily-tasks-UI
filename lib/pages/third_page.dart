import 'package:dailytasksui/components/constants/const.dart';
import 'package:dailytasksui/components/widgets/date_container.dart';
import 'package:dailytasksui/components/widgets/ongoing_tasks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var _selectedIndex;
  onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: KblueColor,
                      backgroundImage: AssetImage('images/three.jpg'),
                      radius: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: kthirdpageIconColor,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: kthirdpageIconColor,
                        ),
                        Text(
                          "NOV",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kthirdpageIconColor,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "DEC",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: kthirdpageIconColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: const [
                          Text(
                            "JAN",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: kthirdpageIconColor,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: kthirdpageIconColor,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: kthirdpageIconColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Color.fromRGBO(244, 67, 54, 1),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: DateContainer(
                          dates: "13 MON",
                          isSelected: _selectedIndex == 0,
                          callback: () => onSelected(0),
                        ),
                      ),
                      Expanded(
                        child: DateContainer(
                          dates: '14 TUE',
                          isSelected: _selectedIndex == 1,
                          callback: () => onSelected(1),
                        ),
                      ),
                      Expanded(
                        child: DateContainer(
                          dates: '16 THU',
                          isSelected: _selectedIndex == 2,
                          callback: () => onSelected(2),
                        ),
                      ),
                      Expanded(
                        child: DateContainer(
                          dates: '18 SUN',
                          callback: () => onSelected(3),
                          isSelected: _selectedIndex == 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "On GOING",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const OnGoingTasks(
                tasks: "Mobile APP design",
                sharing: "Ali and Mike",
                containerColor: kpinkColor,
              ),
              const OnGoingTasks(
                containerColor: KblueColor,
                tasks: "Software Testing",
                sharing: "Musa and Andy",
              ),
              const OnGoingTasks(
                containerColor: kOrangeColor,
                tasks: "Software Checking",
                sharing: "Ali and Andy",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
