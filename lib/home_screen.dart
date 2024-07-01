import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Bottom Navigation App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: _currentIndex == 0 ? Colors.amber : Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        selectedIconTheme: const IconThemeData(size: 40),
        showSelectedLabels: true,
        selectedItemColor: Colors.pink.shade100,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
              color: Colors.white,
            ),
            label: "chart",
          )
        ],
      ),
    );
  }
}
