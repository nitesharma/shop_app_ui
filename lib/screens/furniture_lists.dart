import 'package:flutter/material.dart';
import 'package:shop_app/const.dart';
import 'package:shop_app/screens/navBar.dart';
import 'package:staggered_grid_view_flutter/rendering/sliver_staggered_grid.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class FurnitureLists extends StatefulWidget {
  const FurnitureLists({Key? key}) : super(key: key);

  @override
  State<FurnitureLists> createState() => _FurnitureListsState();
}

class _FurnitureListsState extends State<FurnitureLists>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  int selectedIndex = 1;

  List<Map<String, dynamic>> productList = [
    {
      "title": "Pearl Beading Textured Faux Fur Furnitures",
      "price": '\$31',
    },
    {
      "title": "Atelier Ottoman Gilding Takumi Series",
      "price": '\$17',
    },
    {
      "title": "Teapot with Black Teaside Zipper Series",
      "price": '\$37',
    },
    {
      "title": "Ruffle Trim Spot Wrop Dressing Table",
      "price": '\$13',
    },
    {
      "title": "Oliver Shayn Military TV Cabinet",
      "price": '\$36',
    },
    {
      "title": "Bening Dining Table Black",
      "price": '\$42',
    }
  ];

  List<String> tabs = [
    'All',
    'soaf',
    'Ceiling',
    'Table Lamp',
    'Floor',
  ];

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: appBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            tabBar(),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: StaggeredGridView.builder(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemCount: productList.length,
                gridDelegate:
                    SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  staggeredTileCount: productList.length,
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(1, index.isEven ? 1.5 : 1.5);
                  },
                ),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.pexels.com/photos/2995012/pexels-photo-2995012.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ),
                        ),
                      ),
                      Text(
                        productList[i]['title'],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabBar() {
    return SizedBox(
      width: 900,
      child: TabBar(
        labelPadding: const EdgeInsets.all(6),
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        isScrollable: true,
        controller: tabController,
        indicatorColor: Colors.transparent,
        tabs: List.generate(
          tabs.length,
          (index) => Container(
            // height: 40,
            // width: 80,
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: (selectedIndex == index) ? Colors.black : Colors.white,
            ),
            child: Center(
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: (selectedIndex == index) ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const NavBar(),
            ),
          );
        },
        icon: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
        ),
      ),
      title: const Text(
        "Sofa Set",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list_alt,
              color: Colors.black,
            ))
      ],
    );
  }
}
