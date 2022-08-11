import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/components/app_bar.dart';
import 'package:e_learning/screens/components/category.dart';
import 'package:e_learning/screens/components/sorting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home_rounded),
            title: const Text('Home'),
            activeColor: Colors.red,
            inactiveColor: Colors.grey[500],
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite_rounded),
            title: const Text('Favourite'),
            activeColor: Colors.purpleAccent,
            inactiveColor: Colors.grey[500],
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Messages'),
            activeColor: Colors.pink,
            inactiveColor: Colors.grey[500],
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person_rounded),
            title: const Text('Profile'),
            activeColor: Colors.blue,
            inactiveColor: Colors.grey[500],
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi! Juliya",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Today is a good day\nto learn something new!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              wordSpacing: 1.5,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              height: 1.5),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              color: kpurple,
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset("assets/images/profile.png"),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Sorting(),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(fontSize: 16.0, color: kblue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const CategoryList(),
                const SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
