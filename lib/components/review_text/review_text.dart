import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ReviewText extends StatelessWidget {

  final String customerName;
  final String customerReview;
  ReviewText({@required this.customerName,@required this.customerReview});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color:kcategoryPageBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(customerName),
          SizedBox(
            height: 5.0,
          ),
          Text(customerReview),
        ],
      ),
    );
  }
}
