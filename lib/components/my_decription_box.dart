import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  final String deliveryFee;
  final String deliveryTime;
  final String restaurantDescription;

  const MyDescriptionBox({
    Key? key,
    required this.deliveryFee,
    required this.deliveryTime,
    required this.restaurantDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Delivery fee
          Row(
            children: [
              Icon(Icons.attach_money,
                  color: Theme.of(context).colorScheme.inversePrimary),
              SizedBox(width: 8),
              Text(
                '$deliveryFee' + 'TK',
                style: myPrimaryTextStyle,
              ),
              Text(
                ' fee',
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          // Delivery time
          Row(
            children: [
              Icon(Icons.access_time,
                  color: Theme.of(context).colorScheme.inversePrimary),
              SizedBox(width: 8),
              Text(
                '  $deliveryTime',
                style: myPrimaryTextStyle,
              ),
              Text(
                ': Estimated time',
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          // Restaurant description
          Text(
            restaurantDescription,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
