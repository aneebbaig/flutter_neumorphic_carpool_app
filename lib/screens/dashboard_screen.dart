import 'package:fuelpool/view_models/navigation_view_model.dart';
import 'package:provider/provider.dart';

import '../consts/colors.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const pathName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    NavigationViewModel navViewModel = context.watch<NavigationViewModel>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => navViewModel.setCurrentVal(value),
          currentIndex: navViewModel.currentVal,
          backgroundColor: bgColor,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: "My Rides",
              icon: Icon(Icons.car_rental),
            ),
            BottomNavigationBarItem(
              label: "Available Rides",
              icon: Icon(Icons.car_rental),
            ),
            BottomNavigationBarItem(
              label: "Booked Rides",
              icon: Icon(Icons.car_rental),
            ),
          ],
        ),
        body: navViewModel.selectedPage,
      ),
    );
  }
}
