import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/theme_button.dart';
import '../../../components/social_media.dart';
import '../../../components/string_field.dart';
import '../otp_screen/otp_page.dart';
import '../home_page.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/length_constants.dart';
import '../../../constants/textstyle_constants.dart';
import '../../../constants/imagepath_constants.dart';

class LoginScreen extends StatelessWidget {
  static const id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                 BackArrow(),
                  const  SizedBox(
                    height: 20.0,
                  ),
                   Center(
                    child: Text('angrybaaz',style: kheadingLoginSignup.copyWith(fontSize: 30,fontWeight: FontWeight.w900),),
                  ),
                  const  SizedBox(
                    height: 30.0,
                  ),
                  const  Text(
                    'Login -',
                    style: kheadingLoginSignup,
                  ),
                  const SizedBox(
                    height: ktextFieldGap,
                  ),
                  StringField(
                    text: 'Enter your email',
                    onChanged: (value) {},
                    type: false,
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: ktextFieldGap,
                  ),
                  StringField(
                    text: 'Enter your password',
                    onChanged: (value) {},
                    type: true,
                  ),
                  const SizedBox(
                    height: kregisterButtonGap,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, OtpPage.id);
                    },
                     child: Text(
                      'Forgot password?',
                      style: kforgotPasswordHeading,
                    ),
                  ),
                  const SizedBox(
                    height: ktextFieldGap,
                  ),
                  ThemeButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushNamed(context,  HomePage.id);
                    },
                  ),
                  const SizedBox(
                    height: ktextFieldGap,
                  ),
                  SocialMedia(
                    // width: width,
                    text: 'Google',
                    colour: kgoogleColor,
                    onPressed: () {
                      Navigator.pushNamed(context,  HomePage.id);
                    },
                  ),
                  const SizedBox(
                    height: ktextFieldGap,
                  ),
                  SocialMedia(
                    //width: width,
                    text: 'Facebook',
                    colour: kfacebookColor,
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  ),
                  const SizedBox(
                    height: kregisterButtonGap,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Don\'t have an account'),
                        GestureDetector(
                          child: Text(
                            'Register',
                            style: TextStyle(color: kthemeColor),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, RegisterScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
