import 'package:ekhata/comingSoon.dart';
import 'package:ekhata/dashboard.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF349CE0), Color(0xFFC66DF9)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: Image.asset('assests/home.png'),
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const DashBoard(),
                ),
              );
            },
            icon: Image.asset('assests/dashboard.png'),
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ComingSoon(),
                ),
              );
            },
            icon: Image.asset('assests/bell.png'),
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
