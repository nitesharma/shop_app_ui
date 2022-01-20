import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/const.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> suggestion = [
    'Kitchen  & Dining Chair',
    'Bar Stools',
    'Living Room Furitures',
    'Living Room Furitures',
    'Reclning Sections',
    'Garden Chairs',
    'Stacting Chairs',
    'Office Furnitures'
  ];

  Widget search() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Categories",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          CupertinoIcons.back,
          color: Colors.black,
        ),
        title: const Text(
          "Search",
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            search(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.shortestSide,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: suggestion.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemBuilder: (context, i) {
                  return Container(
                    height: 44,
                    width: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.301573))),
                    child: Center(child: Text(suggestion[i])),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
