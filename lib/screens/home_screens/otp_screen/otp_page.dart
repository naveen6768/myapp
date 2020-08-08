import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:flutter/material.dart';
import '../../../components/string_field.dart';
import '../../../components/theme_button.dart';

class OtpPage extends StatelessWidget {
  static const id = 'OtpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BackArrow(),
              const SizedBox(
                height: 10.0,
              ),
              StringField(
                onChanged: (value) {},
                text: 'Enter otp',
                type: false,
                keyBoardType: TextInputType.number,
              ),
              const  SizedBox(
                height: 10.0,
              ),
              Center(
                child: ThemeButton(
                  text: 'verify OTP',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
