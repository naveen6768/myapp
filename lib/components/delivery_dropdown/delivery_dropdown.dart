import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:flutter/material.dart';

class DeliveryDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconSize: 35.0,
      dropdownColor: kcategoryPageBackground,
      items: [
        DropdownMenuItem(
          child: Text(
            'Cash on Delivery',
            style: TextStyle(fontSize: 15.0),
          ),
        )
      ],
      onChanged: (value) {},
    );
  }
}
