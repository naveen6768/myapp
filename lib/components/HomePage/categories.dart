import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/screens/home_screens/category_description/visiting_card.dart';
import 'package:flutter/material.dart';
import 'categories_row.dart';
import 'package:angrybaazcustomer/constants/length_constants.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color:kcategoryPageBackground,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Categories(
                imagePath1: 'images/zzvisiting.png',
                title1: 'Visiting cards',
                onPressed1: (){Navigator.pushNamed(context, VisitingCard.id);},
                imagePath2: 'images/zzpen.png',
                title2: 'Pens',
                imagePath3: 'images/zzcup.png',
                title3: 'Mug printing',

              ),
              SizedBox(
                height: kcategoryRowGap,
              ),
              Categories(
                imagePath1: 'images/zzshirt.png',
                title1: 'T-shirt printing',
                imagePath2: 'images/zzkeychain.png',
                title2: 'Keychain ',
                imagePath3: 'images/zpad.png',
                title3: 'Pad printing',
              ),
              SizedBox(
                height: kcategoryRowGap,
              ),
              Categories(
                imagePath1: 'images/zzcap.png',
                title1: 'Cap printing',
                imagePath2: 'images/zcover.png',
                title2: 'Cover printing',
                imagePath3: 'images/zzbanner.png',
                title3: 'Banners',
              ),
              SizedBox(
                height: kcategoryRowGap,
              ),
              Categories(
                imagePath1: 'images/z1.png',
                title1: 'Pamphlets',
                imagePath2: 'images/zzlabels.png',
                title2: 'Posters',
                imagePath3: 'images/zzbottle.png',
                title3: 'Sippers',
              ),
              SizedBox(
                height: kcategoryRowGap,
              ),
              Categories(
                imagePath1: 'images/zzmask.png',
                title1: 'Face masks',
                imagePath2: 'images/zzgifts.png',
                title2: 'Gifts& Albums',
                imagePath3: 'images/zposters.png',
                title3: 'Marketing',
              ),
              SizedBox(
                height: kcategoryRowGap,
              ),
              Categories(
                imagePath1: 'images/zzstamp.png',
                title1: 'Stamps',
                imagePath2: 'images/zstickers.png',
                title2: 'Stickers',
                imagePath3: 'images/zzbags.png',
                title3: 'Bags',
              ),

            ],
          ),
        ),
      ],
    );
  }
}
