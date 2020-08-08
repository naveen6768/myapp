import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/length_constants.dart';
import '../../../constants/textstyle_constants.dart';
import '../../../constants/imagepath_constants.dart';
import '../../../components/theme_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: kmiddleHeadingHeight,
                  ),
                    Text(
                    'customize on angrybaaz',
                    style: kheadingLoginSignup.copyWith(color: kheadingColor),
                  ),
                  const SizedBox(
                    height: kmiddleHeadingHeight,
                  ),
                  const Image(
                    image: AssetImage(kwelcomeImage),
                  ),
                  const SizedBox(
                    height: kiconHeight,
                  ),
                    Text(
                    ' angrybaaz is first of its kind \n'
                    '        marketplace of local \n             printing shops.',
                    style: kheadingLoginSignup.copyWith(
                      color: kheadingColor,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: kiconHeight,
                  ),
                  ThemeButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
