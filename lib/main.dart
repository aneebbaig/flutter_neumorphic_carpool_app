import 'package:car_pool/provider/request.dart';
import 'package:car_pool/screens/first_start_screen.dart';
import 'package:car_pool/screens/otp_screen.dart';
import 'package:car_pool/screens/request_screen.dart';

import './screens/dashboard_screen.dart';

import './provider/media_query.dart';
import './screens/authenticate.dart';
import './screens/get_details_screen_driver.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: MyMediaQuery(),
        ),
        ChangeNotifierProvider.value(
          value: Request(),
        )
      ],
      child: MaterialApp(
        title: 'SeatSplit',
        theme: ThemeData(
          primaryColor: Colors.grey[300],
          backgroundColor: Colors.grey[300],
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.black,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              textStyle: const TextStyle(fontFamily: 'Raleway'),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              textStyle: const TextStyle(fontFamily: 'Raleway'),
            ),
          ),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.black,
                ),
                bodyText2: const TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.black,
                  fontSize: 23,
                ),
                headline1: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                ),
                headline2: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                ),
                headline3: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                ),
                headline4: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  // color: Colors.black87,
                  // shadows: boxShadowColors,
                ),
                headline5: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                ),
                headline6: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                ),
              ),
        ),
        home: const OtpScreen(),
        routes: {
          Authenticate.routeName: (context) => Authenticate(),
          GetDetailsScreen.pathName: (context) => GetDetailsScreen(),
          DashboardScreen.pathName: (context) => DashboardScreen(),
          RequestScreen.pathName: (context) => RequestScreen(),
          FirstStartScreen.pathname: (context) => FirstStartScreen(),
        },
      ),
    );
  }
}
