import 'package:ekhata/navBar.dart';
import 'package:flutter/material.dart';
import './HomeScreen.dart';

class AddItemScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController initialsController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "E-khata",
        name: "Ram",
      ),

      // bottomNavigationBar: NavigationBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 20,
              bottom: 20,
            ),
            child: Container(
              height: 650,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF349CE0), Color(0xFFBD6FF7)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    width: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                                color: Colors.white), // Label text color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Price',
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: quantityController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Quantity',
                            labelStyle: TextStyle(
                                color: Colors.white), // Label text color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when not focused
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: initialsController,
                          decoration: const InputDecoration(
                            labelText: 'Initials',
                            labelStyle: TextStyle(
                                color: Colors.white), // Label text color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when not focused
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: initialsController,
                          decoration: const InputDecoration(
                            labelText: 'Set Limit',
                            labelStyle: TextStyle(
                                color: Colors.white), // Label text color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when not focused
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: descriptionController,
                          decoration: const InputDecoration(
                            labelText: 'Description',
                            labelStyle: TextStyle(
                                color: Colors.white), // Label text color
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when not focused
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: 50,
                          width: 120,
                          child: FloatingActionButton(
                            onPressed: () {
                              final name = nameController.text;
                              final price =
                                  double.tryParse(priceController.text) ?? 0.0;
                              final quantity =
                                  int.tryParse(quantityController.text) ?? 0;
                              final initials = initialsController.text;
                              final description = descriptionController.text;

                              print('Name: $name');
                              print('Price: $price');
                              print('Quantity: $quantity');
                              print('Initials $initials');
                              print('Description: $description');
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: const NavBar(),
    );
  }
}
