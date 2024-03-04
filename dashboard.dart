import 'package:ekhata/HomeScreen.dart';
import 'package:ekhata/navBar.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "E-Khata", name: "Ram"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SalesBarChart(),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Top Sales This Week",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TopThreeProducts(),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class SalesBarChart extends StatefulWidget {
  @override
  State<SalesBarChart> createState() => _SalesBarChartState();
}

class _SalesBarChartState extends State<SalesBarChart> {
  final List<double> salesData = [100.0, 150.0, 80.0, 75.0, 60.0, 130.0, 150.0];

  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            gridData: const FlGridData(show: false),
            titlesData: const FlTitlesData(show: false),
            borderData: FlBorderData(show: false),
            barGroups: salesData.asMap().entries.map((entry) {
              final int index = entry.key;
              final double value = entry.value;
              return BarChartGroupData(
                x: index,
                // gridData,
                barRods: [
                  BarChartRodData(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [Color(0xEA2193DD), Color(0xFFCF6AFA)],
                    ),
                    toY: value,
                    // colors: [Colors.white],
                    width: 16.0,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                      bottom: Radius.circular(16),
                    ),
                  ),
                ],
                showingTooltipIndicators: [0],
              );
            }).toList(),
            groupsSpace: 32.0,
            minY: 0,
            maxY: 250,
          ),
        ),
      ),
    );
  }
}

class TopThreeProducts extends StatelessWidget {
  const TopThreeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Product(
            initials: "Fl",
            title: "Flour",
          ),
          Product(
            initials: "Su",
            title: "Sugar",
          ),
          Product(
            initials: "TL",
            title: "Tea Leaves",
          ),
        ],
      ),
    );
  }
}

class Product extends StatefulWidget {
  final String initials;
  final String title;

  Product({
    required this.initials,
    required this.title,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Color(0x14AC59CF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
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
                const SizedBox(
                  width: 100,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
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
