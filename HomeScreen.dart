import 'package:ekhata/mainContent.dart';
import 'package:ekhata/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './ProfileScreen.dart';
// import 'mainContent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "E-khata",
        name: "Ram",
      ),
      body: MainContent(),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String name;

  const MyAppBar({
    required this.title,
    required this.name,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.00, 0.00),
            end: Alignment(-1, 0),
            colors: [Color(0xEA2193DD), Color(0xFFCF6AFA)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
