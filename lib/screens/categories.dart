import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Map<String, dynamic>> categories = [
    {"title": 'Light', "items": '2140 Items'},
    {"title": 'Aram Chair', "items": '1280 Items'},
    {"title": 'Bedroom', "items": '860 Items'},
    {"title": 'Dressing Table', "items": '2140 Items'},
    {"title": 'Bedside Table', "items": '567 Items'},
    {"title": 'Sofa', "items": '786 Items'},
    {"title": 'Office Furnitures', "items": '987 Items'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: categories.length,
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.26,
                  height: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://media.kavehome.com/media/cache/c6/fd/c6fd05686346ff9c9f909efb19030798.jpg')),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[i]['title'],
                          ),
                          Text(
                            categories[i]['items'],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_right))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
