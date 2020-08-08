import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/seller_prices_screen/Seller_prices.dart';
import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/category_description/card_order_details.dart';
import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/category_description/choose_color.dart';

import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/seller_profile/seller_profile.dart';
import 'package:angrybaazcustomer/screens/home_screens/category_customization_screen/editing_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screens/welcome_screens/welcome_screen.dart';
import 'screens/home_screens/login_screen/login_screen.dart';
import 'screens/home_screens/register_screen/register_screen.dart';
import 'screens/home_screens/otp_screen/otp_page.dart';
import 'screens/home_screens/home_page.dart';
import 'screens/home_screens/category_description/visiting_card.dart';

void main() => runApp(AngrybaazApp());

class AngrybaazApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'angrybaaz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Montserrat Alternates',
          ),
          bodyText2: TextStyle(
            fontFamily: 'Montserrat Alternates',
          ),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        OtpPage.id: (context) => OtpPage(),
        HomePage.id: (context) => HomePage(),
        VisitingCard.id: (context) => VisitingCard(),
        CardOrders.id: (context) => CardOrders(),
        ChooseColor.id:(context) => ChooseColor(),
        EditingScreen.id:(context) => EditingScreen(),
        SellerPrices.id:(context) => SellerPrices(),
        SellerProfile.id:(context) => SellerProfile(),
      },
    );
  }
}
