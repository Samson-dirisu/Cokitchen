import 'package:Cokitchen/custom_widget/custom_textfield.dart';
import 'package:Cokitchen/custom_widget/food_screen_title.dart';
import 'package:Cokitchen/custom_widget/kichen_display.dart';
import 'package:Cokitchen/custom_widget/promotion_field.dart';
import 'package:Cokitchen/models/kicthen_model.dart';
import 'package:Cokitchen/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: kitchenModel.length,
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 15.0, bottom: 40.0),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FoodScreenTitle(),
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: CustomTextField(
                              hintText: "  What are you craving?",
                              hintColor: textColor.withOpacity(0.8),
                              fillColor: lightGrey,
                              controller: _searchController,
                              prefixIcon: SvgPicture.asset(
                                "$assetImage/search.svg",
                                color: textColor.withOpacity(0.8),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: IconButton(
                                icon: SvgPicture.asset(
                                  "$assetImage/horitz.svg",
                                  color: buttonColor,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),

                      // PROMOTION AREA
                      PromotionField(),

                      // FEATURED AREA
                      Text(
                        "Featured",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  );
                } else {
                  return KitchenDisplay(index: index);
                }
              },
            ),

            // TRACK ORDER BUTTON
            Positioned(
              bottom: 5.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 30,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), color: green),
                  child: Text(
                    "Track order",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
