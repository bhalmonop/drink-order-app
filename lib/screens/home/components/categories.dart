import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/data/data.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {
    //hyde function btaaml return lel widget
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 3),
        child: Container(
          width: size.width * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                  color: selectedCategoryIndex == index
                      ? white.withOpacity(0.4)
                      : Colors.transparent,
                  width: 2.0)),
          // hon aam n2oul eno lborder ykoun transparent ta bas nef2os aal container
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                fontWeight: selectedCategoryIndex == index
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: selectedCategoryIndex == index
                    ? white
                    : white.withOpacity(0.4),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(appPadding),
      //hayde kermel lpadding w bte3ne eno kel lmaylet zet lpadding li hiye default
      child: Container(
        height: size.height * 0.07,
        child: ListView.builder(
            //ta fina naaml scroll
            physics: BouncingScrollPhysics(),
            //scrolling behavior yaane metl behaviors w
            scrollDirection: Axis.horizontal,
            // w hayde bet oul lwen bedna naaml scrolling
            padding:
                EdgeInsets.only(left: appPadding / 1.5, top: appPadding / 3),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return _buildCategory(context, index);
            }),
      ),
    );
  }
}
