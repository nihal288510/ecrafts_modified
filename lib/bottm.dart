import 'package:ecrafts_modified/new.dart';

import 'package:flutter/material.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});
  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int indexNum = 0;
  List page = [New(), New(), New()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNum,
        selectedIconTheme:
            IconThemeData(color: const Color.fromARGB(255, 14, 21, 26)),
        onTap: (int Index) {
          setState(() {
            indexNum = Index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
      body: page[indexNum],
    );
  }
}
