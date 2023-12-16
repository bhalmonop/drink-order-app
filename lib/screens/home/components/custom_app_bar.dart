import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/constants/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Container(
        height: size.height * 0.2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //hawde lproperties hene lel container li ftahne taht
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //hyde yaane bi sirou aligned 3a nafs l7aref
              mainAxisAlignment: MainAxisAlignment.end,
              //yaane lchildren byenzlo 3a ka3b lcontainer

              children: [
                Text(
                  'Tonight',
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'Monday, November 25',
                  style: TextStyle(
                    color: white.withOpacity(0.4),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Container( //heda lcontainer houwe ltotal price li 3al zewye
              width: size.width * 0.2,
              height: size.height * 0.13,
              decoration: BoxDecoration(
                  color: grey_medium,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                    //hayde ta a3tiya padding men fo2 baamel bel wrapPaddng
                padding: const EdgeInsets.symmetric(vertical: appPadding / 3),
                child: Column(
                  children: [
                    Stack(
                      //;stack men 3ouza kermel nhot kaza widget fo2 baadon
                      children: [
                        Transform(
                          //hayde kermel obrom licon w aamela rota w hota bl nos
                          child: Icon(
                            CustomIcons.bar_service,
                            //hayde 3iyatnela mnel costume icons.dart bel constant folder
                            size: 40,
                            color: white,
                          ),
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                        ),
                        Container( //heda kermel lra2em li aal taraf men fo2
                          height: size.height * 0.02,
                          width: size.width * 0.04,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: grey_dark.withOpacity(0.8)),
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(color: white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '32',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: white.withOpacity(0.4),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
