import 'package:flutter/cupertino.dart';

import '../screens/available_rides_screen.dart';
import '../screens/booked_rides_screen.dart';
import '../screens/my_rides_screen.dart';

class NavigationViewModel extends ChangeNotifier {
  NavigationViewModel() {
    setCurrentVal(0);
  }
  final List<Widget> _pageList = [
    const MyRidesScreen(),
    const AvailableRidesScreen(),
    const BookedRidesScreen(),
  ];
  int _currentVal = 0;

  int get currentVal => _currentVal;
  Widget get selectedPage => _pageList[currentVal];

  setCurrentVal(int currentVal) {
    _currentVal = currentVal;
    notifyListeners();
  }
}
