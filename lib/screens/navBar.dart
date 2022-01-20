import 'package:flutter/material.dart';
import 'package:shop_app/screens/furniture_lists.dart';
import 'package:shop_app/screens/search.dart';

import 'cart.dart';
import 'categories.dart';
import 'home.dart';
import 'profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedNav = 0;

  List<Widget> pages = const [
    Home(),
    FurnitureLists(),
    Cart(),
    Search(),
    Profile(),
  ];

  List<IconData> navIcons = [
    Icons.home,
    Icons.production_quantity_limits,
    Icons.shopping_cart,
    Icons.search,
    Icons.person,
  ];
  Widget navButton({required IconData icon, required void Function() onTap}) {
    return IconButton(onPressed: onTap, icon: Icon(icon));
  }

  double buttonLoc(int index) {
    var size = MediaQuery.of(context).size;
    switch (index) {
      case 0:
        return 10;
      case 1:
        return size.width * 0.22;
      case 2:
        return size.width / 2 - 40;
      case 3:
        return size.width / 2 + 30;
      case 4:
        return size.width - 100;

      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: pages[selectedNav],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 12,
            ),
            (selectedNav != 0)
                ? navButton(
                    onTap: () {
                      selectedNav = 0;

                      setState(() {});
                    },
                    icon: Icons.home,
                  )
                : const SizedBox(
                    width: 60,
                  ),
            // const SizedBox(
            //   width: 30,
            // ),
            (selectedNav != 1)
                ? navButton(
                    onTap: () {
                      selectedNav = 1;

                      setState(() {});
                    },
                    icon: Icons.production_quantity_limits,
                  )
                : const SizedBox(
                    width: 60,
                  ),
            // const SizedBox(
            //   width: 30,
            // ),
            (selectedNav != 2)
                ? navButton(
                    onTap: () {
                      selectedNav = 2;

                      setState(() {});
                    },
                    icon: Icons.shopping_cart,
                  )
                : const SizedBox(
                    width: 60,
                  ),
            // const SizedBox(
            //   width: 30,
            // ),
            (selectedNav != 3)
                ? navButton(
                    onTap: () {
                      selectedNav = 3;

                      setState(() {});
                    },
                    icon: Icons.search,
                  )
                : const SizedBox(
                    width: 60,
                  ),
            // const SizedBox(
            //   width: 30,
            // ),
            (selectedNav != 4)
                ? navButton(
                    onTap: () {
                      selectedNav = 4;
                      // print(buttonLoc(selectedNav));
                      // print(selectedNav);

                      setState(() {});
                    },
                    icon: Icons.person,
                  )
                : const SizedBox(
                    width: 60,
                  ),
          ],
        ),
      ),
      floatingActionButton: Stack(children: [
        Positioned(
          left: buttonLoc(selectedNav),
          // top: 0,
          bottom: 35,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {},
              child: navButton(
                icon: navIcons[selectedNav],
                onTap: () {},
              ),
            ),
          ),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
