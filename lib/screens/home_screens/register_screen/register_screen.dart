import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:flutter/material.dart';
import '../../../constants/textstyle_constants.dart';
import '../../../components/string_field.dart';
import '../../../components/theme_button.dart';
import '../../../constants/length_constants.dart';

class RegisterScreen extends StatelessWidget {
  static const id = 'RegisterScreen';

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                   BackArrow(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text('angrybaaz',style: kheadingLoginSignup.copyWith(fontSize: 30,fontWeight: FontWeight.w900),),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                   const Text(
                      'Signup -',
                      style: kheadingLoginSignup,
                    ),
                    const SizedBox(
                      height: ktextFieldGap,
                    ),
                    StringField(
                      text: 'Name',
                      onChanged: (value) {},
                      type: false,
                    ),
                    const  SizedBox(
                      height: ktextFieldGap,
                    ),
                    StringField(
                      text: 'Mobile no.',
                      onChanged: (value) {},
                      type: false,
                      keyBoardType: TextInputType.phone,
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
                      text: 'Password',
                      onChanged: (value) {},
                      type: true,
                    ),
                    const SizedBox(
                      height: ktextFieldGap,
                    ),
                    StringField(
                      text: 'Confirm password',
                      onChanged: (value) {},
                      type: true,
                    ),
                    const SizedBox(
                      height: ktextFieldGap,
                    ),
                    ThemeButton(
                      text: 'Signup',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: ktextFieldGap,
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
