import 'package:flutter/material.dart';
import 'package:shop_app/const.dart';
import 'package:shop_app/screens/categories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  // int selectedNav = 0;

  Widget buildCard(context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: size.height * 0.25,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/220749/pexels-photo-220749.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Introducing",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Budget Furnitures",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "All Furniture Discount",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Upto 50% Off*",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Shop Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSlideButton(
      {required void Function() onTap,
      required String title,
      required IconData icon,
      required Color continerColor,
      required Color circleColor,
      required Color txtColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 75,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: continerColor,
          borderRadius: BorderRadius.circular(37),
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: circleColor,
              child: Icon(
                icon,
                size: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                color: txtColor,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSlide() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildSlideButton(
          onTap: () {
            selectedIndex = 0;
            setState(() {});
          },
          icon: Icons.chair_alt,
          title: "Chair",
          continerColor: (selectedIndex == 0) ? Colors.black : Colors.white,
          circleColor: (selectedIndex == 0) ? Colors.white : kBackground,
          txtColor: (selectedIndex == 0) ? Colors.white : Colors.black,
        ),
        buildSlideButton(
          onTap: () {
            selectedIndex = 1;
            setState(() {});
          },
          icon: Icons.chair,
          title: "Sofa",
          continerColor: (selectedIndex == 1) ? Colors.black : Colors.white,
          circleColor: (selectedIndex == 1) ? Colors.white : kBackground,
          txtColor: (selectedIndex == 1) ? Colors.white : Colors.black,
        ),
        buildSlideButton(
          onTap: () {
            selectedIndex = 2;
            setState(() {});
          },
          icon: Icons.dinner_dining,
          title: "Dinner",
          continerColor: (selectedIndex == 2) ? Colors.black : Colors.white,
          circleColor: (selectedIndex == 2) ? Colors.white : kBackground,
          txtColor: (selectedIndex == 2) ? Colors.white : Colors.black,
        ),
        buildSlideButton(
          onTap: () {
            selectedIndex = 3;
            setState(() {});
          },
          icon: Icons.dashboard_outlined,
          title: "Drawers",
          continerColor: (selectedIndex == 3) ? Colors.black : Colors.white,
          circleColor: (selectedIndex == 3) ? Colors.white : kBackground,
          txtColor: (selectedIndex == 3) ? Colors.white : Colors.black,
        ),
      ],
    );
  }

  Widget buildList() {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 40),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://media.kavehome.com/media/cache/c6/fd/c6fd05686346ff9c9f909efb19030798.jpg')),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Armchair Konna Green',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          // SizedBox.shrink()
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        // width: size.shortestSide,
                        // height: size.shortestSide,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '\$47.00',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              // padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black,
                              ),
                              child: const Center(
                                child: Text(
                                  "Shop",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget bottomCard() {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: size.height * 0.25,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Collections",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "New Arriving\nWinter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Upto 35% Off*",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            const Text(
              "Discover",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            buildCard(context),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Products()));
                  },
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            buildSlide(),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Trendings",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            buildList(),
            const SizedBox(
              height: 10,
            ),
            bottomCard(),
          ],
        ),
      ),
    );
  }
}
