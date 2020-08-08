import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/category_description/choose_color.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/cards_shape/start_design_buttons.dart';
import 'package:angrybaazcustomer/components/paper_quality_buttons/paper_quality.dart';
import 'package:angrybaazcustomer/components/recommended_button/recommended_button.dart';
import 'package:angrybaazcustomer/components/theme_button.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/back_arrow.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CardOrders extends StatefulWidget {
  static const id = 'CardOrder';

  @override
  _CardOrdersState createState() => _CardOrdersState();
}

class _CardOrdersState extends State<CardOrders> {
  String imagePath = 'images/images1.png';

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [],
        defaultImage: AssetImage(imagePath),
        autoplay: false,
        showIndicator: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      bottomNavigationBar: NavigationBarBottom(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kthemeColor,
        leading: BackArrow(),
        title:const Text(
          'Standard visiting cards',
          style: kappBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 130.0,
            width: double.infinity,
            color: kcategoryPageBackground,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 120.0,
                  width: 150.0,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          imagePath = 'images/images1.png';
                        },
                      );
                    },
                    child: Image.asset(
                      'images/images1.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 120.0,
                  width: 150.0,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          imagePath = 'images/images2.png';
                        },
                      );
                    },
                    child: Image.asset(
                      'images/images2.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 120.0,
                  width: 150.0,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          imagePath = 'images/images3.png';
                        },
                      );
                    },
                    child: Image.asset(
                      'images/images3.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Dimensions -'),
                        Text('89 * 51 mm'),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text('Standard glossy or matte paper included'),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kcategoryPageBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Paper Quality - ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            PaperQualityButtons(
                              text: 'Standard',
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                           RecommendedButton(),
                            PaperQualityButtons(
                              text: 'Premium',
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            PaperQualityButtons(
                              text: 'Premium Plus',
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            const Text(
                              'Paper Stock -',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            RecommendedButton(),
                            PaperQualityButtons(
                              text: 'Matte',
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            PaperQualityButtons(
                              text: 'Glossy',
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            const  Text(
                              'Corners - ',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: PaperQualityButtons(text: 'Standard',onPressed: (){},),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Expanded(
                                  child: PaperQualityButtons(text: 'Rounded',onPressed: (){},),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const  Text(
                          'Quantity -',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        DropdownButton(
                          dropdownColor: kthemeColor,
                          onChanged: (value) {
                            print(value);
                          },
                          hint:const Text('quantity'),
                          items: [
                            const DropdownMenuItem(child: Text('200')),
                            const  DropdownMenuItem(child: Text('100')),
                            const DropdownMenuItem(child: Text('10')),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: ThemeButton(
                        text: 'Start Designing',
                        onPressed: () {
                          Navigator.pushNamed(context, ChooseColor.id);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
