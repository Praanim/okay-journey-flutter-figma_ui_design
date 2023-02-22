import 'package:figma_design_ui/screens/icons_file.dart';
import 'package:figma_design_ui/screens/widgets/custom_container.dart';
import 'package:figma_design_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'package:iconify_flutter/iconify_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                          backgroundImage:
                              AssetImage('assets/images/pranim_hero.jpg'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Candidate",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(55, 49, 49, 0.49)),
                              ),
                              Text(
                                "Pranim S. Thakuri",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromRGBO(55, 49, 49, 1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    badges.Badge(
                      badgeContent: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      position: badges.BadgePosition.topEnd(top: -15, end: -7),
                      badgeStyle: badges.BadgeStyle(badgeColor: appColor),
                      child: Iconify(
                        bell_icon,
                        color: appColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "Table list",
                style: TextStyle(
                    fontSize: 10, color: Color.fromRGBO(72, 67, 67, 1)),
              ),
              const CustomContainer(
                showHeader: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomContainer(showHeader: false),
              const SizedBox(
                height: 10,
              ),
              const CustomContainer(showHeader: false),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      //do something
                    },
                    child: const Text(
                      "Explore Here",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: unSelectedColor,
          backgroundColor: appColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Iconify(
                  homeIcon,
                  color: Colors.white,
                ),
                label: 'Home',
                backgroundColor: appColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.task_alt),
                label: 'Task',
                backgroundColor: appColor),
            BottomNavigationBarItem(
              icon: Iconify(
                statusIcon,
                color: unSelectedColor,
              ),
              label: 'Status',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.task_alt), label: 'Profile'),
          ]),
      // body: ,
    );
  }
}
