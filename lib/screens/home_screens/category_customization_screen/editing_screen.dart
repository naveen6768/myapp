import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/seller_prices_screen/Seller_prices.dart';
import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/string_field.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditingScreen extends StatelessWidget {
  static const id = 'EditingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:NavigationBarBottom(),
      appBar: AppBar(
        leading: BackArrow(),
        backgroundColor: kthemeColor,
        centerTitle: true,
        title: Text(
          'Editing Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                color: kcategoryPageBackground,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Text',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(
                      height: 25.0,
                      child: VerticalDivider(
                        color: Colors.black,
                        width: 17.0,
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      'Images',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(
                      height: 25.0,
                      child: VerticalDivider(
                        color: Colors.black,
                        width: 17.0,
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      'More',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    //SizedBox(width: 10.0,),
                    const SizedBox(
                      height: 25.0,
                      child: VerticalDivider(
                        color: Colors.black,
                        width: 17.0,
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      'Undo',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    //SizedBox(width: 10.0,),
                    const SizedBox(
                      height: 25.0,
                      child: VerticalDivider(
                        color: Colors.black,
                        width: 17.0,
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      'Redo',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),

              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                         height: 100.0 ,
                          width: 100.0,
                          color: Colors.black,

                        ),
                        const SizedBox(height: 5.0,),
                        Text('Front Side')
                      ],
                    ),
                    const SizedBox(width: 10.0,),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 100.0 ,
                          width: 100.0,
                          color: kcategoryPageBackground,

                        ),
                        const SizedBox(height: 5.0,),
                        Text('Back Side')
                      ],
                    )

                  ],
                ),

              ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Column(
                 children: <Widget>[
                   StringField(onChanged: (value){},type: false,text: 'Text Here',),
                   const SizedBox(height: 10.0,),
                   StringField(onChanged: (value){},type: false,text: 'Text Here',),
                   const SizedBox(height: 10.0,),
                   StringField(onChanged: (value){},type: false,text: 'Text Here',),
                   const SizedBox(height: 20.0,),
                   Text('Preview',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.indigo,fontSize: 15.0),),
                  const SizedBox(height: 20.0,),
                  RaisedButton(
                     color: Color(0xff24BA17),
                     onPressed: (){
                       Navigator.pushNamed(context, SellerPrices.id);
                     },
                     child: Text('Proceed for best price',style:kappBarTextStyle.copyWith(fontSize: 18.0),),
                   )
                 ],
               ),
             ),
            ],
          ),
        ],
      ),
    );
  }
}
