import 'package:flutter/material.dart';
import './addItemScreen.dart';

class MainContent extends StatefulWidget {
  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final desiredHeight = screenHeight * 1;
        return Stack(
          children: [
            Container(
              height: desiredHeight,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    infoCards(
                      initials: "Ri",
                      title: "Rice",
                      quantity: 80,
                    ),
                    infoCards(
                      initials: "Fl",
                      title: "Flour",
                      quantity: 74,
                    ),
                    infoCards(
                      initials: "Su",
                      title: "Sugar",
                      quantity: 40,
                    ),
                    InfoCardYellow(
                      initials: "CC",
                      title: "Coca Cola",
                      quantity: 30,
                    ),
                    infoCards(
                      initials: "RO",
                      title: "Refine Oil",
                      quantity: 25,
                    ),
                    infoCards(
                      initials: "CF",
                      title: "Corn Flakes",
                      quantity: 22,
                    ),
                    infoCards(
                      initials: "MK",
                      title: "Millk",
                      quantity: 34,
                    ),
                    InfoCardRed(
                      initials: "TL",
                      title: "Tea Leaves",
                      quantity: 2,
                    ),
                    InfoCardRed(
                      initials: "Sa",
                      title: "Salt",
                      quantity: 3,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 50,
                  width: 120,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => AddItemScreen(),
                        ),
                      );
                    },
                    backgroundColor: Color(0xFF6B4BFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "Add Items",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class infoCards extends StatefulWidget {
  final String initials;
  final String title;
  int quantity;

  infoCards({
    required this.initials,
    required this.title,
    required this.quantity,
  });

  @override
  _infoCardsState createState() => _infoCardsState();
}

class _infoCardsState extends State<infoCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment(-1.00, -0.00),
              end: Alignment(1, 0),
              colors: [Color(0xFF298FD8), Color(0x008A09C1)],
            ),
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 41,
                    height: 41,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        widget.initials,
                        style: const TextStyle(
                          color: Color(0xFF298FD8),
                          fontSize: 16,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  widget.quantity.toString(),
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.quantity > 0) {
                        widget.quantity--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCardRed extends StatefulWidget {
  final String initials;
  final String title;
  int quantity;
  InfoCardRed({
    required this.initials,
    required this.title,
    required this.quantity,
  });

  @override
  State<InfoCardRed> createState() => _InfoCardRedState();
}

class _InfoCardRedState extends State<InfoCardRed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment(-1.00, -0.00),
              end: Alignment(1, 0),
              colors: [Color(0xFF298FD8), Color(0x008A09C1)],
            ),
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 41,
                    height: 41,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        widget.initials,
                        style: const TextStyle(
                          color: Color(0xFF298FD8),
                          fontSize: 16,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  widget.quantity.toString(),
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.quantity > 0) {
                        widget.quantity--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCardYellow extends StatefulWidget {
  final String initials;
  final String title;
  int quantity;
  InfoCardYellow({
    required this.initials,
    required this.title,
    required this.quantity,
  });

  @override
  State<InfoCardYellow> createState() => _InfoCardYellowState();
}

class _InfoCardYellowState extends State<InfoCardYellow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment(-1.00, -0.00),
              end: Alignment(1, 0),
              colors: [Color(0xFF298FD8), Color(0x008A09C1)],
            ),
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 41,
                    height: 41,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        widget.initials,
                        style: const TextStyle(
                          color: Color(0xFF298FD8),
                          fontSize: 16,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  widget.quantity.toString(),
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.yellowAccent,
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.quantity > 0) {
                        widget.quantity--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
