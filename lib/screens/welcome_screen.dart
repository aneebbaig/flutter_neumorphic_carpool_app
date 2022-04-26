import 'package:car_pool/provider/request.dart';
import 'package:car_pool/screens/dashboard_screen.dart';
import 'package:car_pool/widgets/neumorphic_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final requestType = Provider.of<Request>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            "Welcome to SeatSplit",
            style: Theme.of(context).textTheme.headline4,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text("Please Choose: "),
                // const SizedBox(
                //   height: 10,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        NeumorphicStyle(
                            heightPerc: 0.20,
                            widthPerc: 0.36,
                            widget: Icon(
                              Icons.ac_unit,
                              size: MediaQuery.of(context).size.width * 0.22,
                            ),
                            borderRadius: 25,
                            func: () {
                              requestType.changeRequestType(false);
                              Navigator.of(context)
                                  .pushNamed(DashboardScreen.pathName);
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          "To FAST",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    Column(
                      children: [
                        NeumorphicStyle(
                          heightPerc: 0.20,
                          widthPerc: 0.36,
                          widget: Icon(
                            Icons.access_alarm,
                            size: MediaQuery.of(context).size.width * 0.22,
                          ),
                          borderRadius: 25,
                          func: () {
                            requestType.changeRequestType(true);
                            Navigator.of(context)
                                .pushNamed(DashboardScreen.pathName);
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          "To Home",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
