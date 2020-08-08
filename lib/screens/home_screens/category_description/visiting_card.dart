import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/category_description/card_order_details.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/cards_shape/card_variants.dart';
import 'package:angrybaazcustomer/components/cards_shape/start_design_buttons.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import '../../../components/back_arrow.dart';

class VisitingCard extends StatefulWidget {
  static const id = 'VisitingCard';

  @override
  _VisitingCardState createState() => _VisitingCardState();
}

class _VisitingCardState extends State<VisitingCard> {
  Color colour1 = kcategoryPageBackground;
  Color colour2 = kcategoryPageBackground;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: NavigationBarBottom(),
      appBar: AppBar(

        backgroundColor: kthemeColor,
        leading: BackArrow(),
        title: Text(
          'Visiting Cards',
          style: kappBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * 0.30,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/promo_visiting.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  StartDesignButton(
                    child: 'Start Design',
                    colour: colour1,
                    onPressed: () {
                      setState(() {
                        if (colour1 == Colors.black) {
                          colour1 = kcategoryPageBackground;
                          colour2 = Colors.black;
                        } else {
                          colour1 = Colors.black;
                          colour2 = kcategoryPageBackground;
                        }
                      });
                    },
                  ),
                  StartDesignButton(
                    child: 'Browse Designs',
                    colour: colour2,
                    onPressed: () {
                      setState(() {
                        if (colour2 == Colors.black) {
                          colour2 = kcategoryPageBackground;
                          colour1 = Colors.black;
                        } else {
                          colour2 = Colors.black;
                          colour1 = kcategoryPageBackground;
                        }
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Visiting Card Shapes -',
                      style: kheadingLoginSignup.copyWith(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CardVariants(
                      width: width,
                      title: 'Standard',
                      imagePath: 'images/promo_visiting.png',
                      onPressed: () {
                        Navigator.pushNamed(context, CardOrders.id);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CardVariants(
                      width: width,
                      title: 'Standard',
                      imagePath: 'images/promo_visiting.png',
                      onPressed: () {
                        Navigator.pushNamed(context, CardOrders.id);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CardVariants(
                      width: width,
                      title: 'Standard',
                      imagePath: 'images/promo_visiting.png',
                      onPressed: () {
                        Navigator.pushNamed(context, CardOrders.id);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CardVariants(
                      width: width,
                      title: 'Standard',
                      imagePath: 'images/promo_visiting.png',
                      onPressed: () {
                        Navigator.pushNamed(context, CardOrders.id);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
