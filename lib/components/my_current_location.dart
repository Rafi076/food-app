import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({Key? key}) : super(key: key);

  @override
  _MyCurrentLocationState createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  final TextEditingController textController =
      TextEditingController(); // Add text controller
  String _currentAddress = "Set your Location"; // Default location

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Your location"),
        content: TextField(
          controller: textController, // Assign controller to TextField
          decoration: InputDecoration(hintText: "Enter new address"),
        ),
        actions: [
          // Cancel button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear(); // Clear text controller
            },
            child: const Text('Cancel'),
          ),

          // Save button
          MaterialButton(
            onPressed: () {
              // Update delivery address
              String newAddress = textController.text;
              context.read<Restaurant>().updateDeliveryAddres(newAddress);
              setState(() {
                _currentAddress = newAddress; // Update current address
              });
              Navigator.pop(context);
              textController.clear(); // Clear text controller
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<Restaurant>(
            builder: (context, restaurant, child) => Text(
              restaurant.deliveryAddress,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Consumer<Restaurant>(builder: (context, restaurant, child)=>Text(
                  restaurant.deliveryAddress, // Display current address
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                )),

                // Dropdown menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
