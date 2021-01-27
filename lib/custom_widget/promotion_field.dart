import 'package:Cokitchen/models/promotional_model.dart';
import 'package:Cokitchen/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PromotionField extends StatelessWidget {
  // CAROUSEL IMAGE
  Carousel carouselImage() {
    return Carousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        images: [
          Image.asset("$assetImage/promotion.png"),
          Image.asset("$assetImage/promotion.png"),
          Image.asset("$assetImage/promotion.png"),
          Image.asset("$assetImage/promotion.png"),
        ]);
  }

  // PROMOTION IMAGES
  Widget promotionImage() {
    return ListView.builder(
      itemCount: promotionImages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            //  top: 10.0,
            // bottom: 10.0,
            right: 10.0,
            left: 3,
          ),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width-70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(promotionImages[index].img),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Est. delivery time: 35mins",
              style: TextStyle(
                  color: textColor.withOpacity(0.8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Your first delivery is FREE!",
              style: TextStyle(
                  color: textColor.withOpacity(0.8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center, height: 210, child: promotionImage()),
      ],
    );
  }
}
