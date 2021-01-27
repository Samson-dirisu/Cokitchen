import 'package:Cokitchen/utilities/constants.dart';
import 'package:flutter/material.dart';

class FoodScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.access_time,
              color: textColor.withOpacity(0.8),
              size: 15.0,
            ),
            Text(
              " Deliver now, to",
              style: TextStyle(
                  color: textColor.withOpacity(0.8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "53, Awolowo Road, Ikoyi   ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                      color: Colors.black),
                ),
                Icon(Icons.keyboard_arrow_down_sharp, color: buttonColor),
              ],
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: lightGrey,
                radius: 20,
                child: Icon(
                  Icons.person_outline,
                  color: buttonColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
