import 'package:Cokitchen/screens/deals_screen.dart';
import 'package:Cokitchen/screens/explore_screen.dart';
import 'package:Cokitchen/screens/food_screen.dart';
import 'package:Cokitchen/screens/orders_screen.dart';
import 'package:Cokitchen/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenWrapper extends StatefulWidget {
  @override
  _ScreenWrapperState createState() => _ScreenWrapperState();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  int _currentIndex = 0;

  // LIST OF SCREENS
  List<Widget> _listOfScreens = [
    FoodScreen(),
    ExploreScreen(),
    OrdersScreen(),
    DealsScreen(),
  ];

  // FUNCTION INCHARGE OF CHANGING THE INDEX OF SCREENS
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  BottomNavigationBarItem navBarItem(String assetName, {int index, String label,}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        assetName,
        color: _currentIndex == index 
        ? buttonColor : Colors.grey,
      ),
      label: label,
    );
  }

  // BOTTOM NAVIGATION BAR
  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTap,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      selectedFontSize: 11.0,
      unselectedFontSize: 11.0,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
       navBarItem("$assetImage/utensils.svg",
        index: 0,
        label: "FOOD"
       ),
        navBarItem("$assetImage/search.svg",
        index: 1,
        label: "EXPLORE"
       ),
        navBarItem("$assetImage/receipt.svg",
        index: 2,
        label: "ORDERS"
       ),
        BottomNavigationBarItem(
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                '$assetImage/percentage.svg',
                color: _currentIndex == 3 ? buttonColor : Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 3.0),
                child: CircleAvatar(
                  backgroundColor: buttonColor,
                  radius: 4.0,
                ),
              ),
            ],
          ),
          label: "DEALS",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _listOfScreens,
      ),

      // BOTTOM NAV BAR
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
