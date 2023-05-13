import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key, required this.pages, required this.items});

  final List<Widget> pages;
  final List<BottomNavigationBarItem> items;

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  var pageIndex = 0;
  void changeIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: widget.pages),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.grey.shade300,
          currentIndex: pageIndex,
          onTap: changeIndex,
          items: widget.items.map((item) => item).toList()),
    );
  }
}
