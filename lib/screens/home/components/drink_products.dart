import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/data/data.dart';
import 'package:drink_order_app_ui/models/drink.dart';
import 'package:drink_order_app_ui/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class DrinkProducts extends StatelessWidget {
  Widget _buildDrinkProducts(BuildContext context, int index) {
    Drink drink = drinks[index];
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      // is used to detect a tap gesture on the wrapped widget.
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailScreen(drink: drink),
          //In this case, when the widget is tapped, it navigates to a new screen using Navigator.push.
          // It uses a MaterialPageRoute to transition to a new screen (DetailScreen)
          // and passes a drink object as a parameter to that screen.


        ),
      ),
      child: Padding(
        // heda lpadding houwe kermel l outer padding taba3 heda lchild
        padding: EdgeInsets.only(
            left: appPadding, right: appPadding, bottom: appPadding / 2),
        child: Stack(
          //hyde lstack elna hiye kermel n7ot kaza child fo2 baadon ka style
          children: [
            ClipRRect(
              //hyde bet hot limage bi rounded rectangular container
              //w fine a3tine border raduis w styl
              borderRadius: BorderRadius.circular(40.0),
              child: Image(
                width: size.width * 0.85,
                image: AssetImage(drink.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(appPadding),
              child: Column(
                //heda lcolumn l2asese li fi b2albo doscount w name
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //heda lcontainer li b2albo discount
                    width: size.width * 0.15,
                    height: size.height * 0.075,
                    decoration: BoxDecoration(
                      color: grey_dark,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      //b2alb lcontainer 3melna heda lcolumn
                      // ta nhot fi discount per w klmet discount
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          drink.discount.toString() + '%',
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Discout',
                          style: TextStyle(
                            color: white.withOpacity(0.4),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    //heda lcolumn fi b2albo lname taba3 ldrinkx
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drink.name,
                        style: TextStyle(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        drink.category,
                        style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.55,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return _buildDrinkProducts(context, index);
          }),
    );
  }
}
