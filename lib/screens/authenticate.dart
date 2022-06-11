import 'package:car_pool/consts/decorations_helperf.dart';
import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/widgets/my_form.dart';

import 'package:car_pool/widgets/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Authenticate extends StatefulWidget {
  static String routeName = '/auth';
  final bool _isLogin = true;

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isSignup = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  final TextEditingController _phoneController1 = TextEditingController();
  final TextEditingController _phoneController2 = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mq.getHeight(context) * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: mq.getWidth(context) * 0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      "Get Started",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mq.getHeight(context) * 0.05,
              ),
              MyForm(
                children: [
                  Container(
                    decoration: textFieldDecoration,
                    child: TextFormField(
                      controller: _emailController,
                      decoration: textFieldInputDecoration.copyWith(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  Container(
                    decoration: textFieldDecoration,
                    child: TextFormField(
                      controller: _passController,
                      decoration: textFieldInputDecoration.copyWith(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  if (isSignup)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 2000),
                      child: Column(
                        children: [
                          SizedBox(
                            height: mq.getHeight(context) * 0.02,
                          ),
                          Container(
                            decoration: textFieldDecoration,
                            child: TextFormField(
                              controller: _confirmPassController,
                              decoration: textFieldInputDecoration.copyWith(
                                hintText: "Confirm Password",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mq.getHeight(context) * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: textFieldDecoration,
                                  child: TextFormField(
                                    controller: _phoneController1,
                                    keyboardType: TextInputType.phone,
                                    decoration:
                                        textFieldInputDecoration.copyWith(
                                      hintText: "03xx",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: mq.getWidth(context) * 0.02,
                              ),
                              const Text('-'),
                              SizedBox(
                                width: mq.getWidth(context) * 0.02,
                              ),
                              Flexible(
                                flex: 2,
                                child: Container(
                                  decoration: textFieldDecoration,
                                  child: TextFormField(
                                    controller: _phoneController2,
                                    keyboardType: TextInputType.phone,
                                    decoration:
                                        textFieldInputDecoration.copyWith(
                                      hintText: "xxxxxxx",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.05,
                  ),
                  NeumorphicContainer(
                    child: TextButton(
                      child: Text(
                        isSignup ? "Signup" : "Login",
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(mq.getWidth(context) * 0.5, 40),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSignup = !isSignup;
                      });
                    },
                    style: TextButton.styleFrom(),
                    child: Text(
                      isSignup
                          ? "Click Here to Login "
                          : "Click here to SignUp",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
