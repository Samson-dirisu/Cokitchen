import 'package:Cokitchen/models/kicthen_model.dart';
import 'package:Cokitchen/utilities/constants.dart';
import 'package:flutter/material.dart';

class KitchenDisplay extends StatefulWidget {
  final int index;
  KitchenDisplay({this.index});
  @override
  _KitchenDisplayState createState() => _KitchenDisplayState();
}

class _KitchenDisplayState extends State<KitchenDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20),
      child: Stack(
        children: [
          Material(
            elevation: 5.0,
            shadowColor: textColor.withOpacity(0.5),
            child: Column(
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kitchenModel[widget.index].img),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    leading: Image.asset(kitchenModel[widget.index].logo),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        kitchenModel[widget.index].title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Text(
                      kitchenModel[widget.index].description,
                      style: TextStyle(
                          color: textColor.withOpacity(0.85),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: buttonColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 10,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
