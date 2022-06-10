import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/screens/first_start_screen.dart';
import 'package:car_pool/widgets/my_circular_buttons.dart';
import 'package:car_pool/widgets/my_form.dart';
import 'package:car_pool/widgets/my_text_form_field.dart';
import 'package:car_pool/widgets/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Authenticate extends StatefulWidget {
  static String routeName = '/auth';
  bool _isLogin = true;

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
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
                  MyTextFormField(
                    child: TextFormField(),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyTextFormField(
                    child: TextFormField(),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.05,
                  ),
                  NeumorphicContainer(
                    child: TextButton(
                      child: const Text(
                        "Login",
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(mq.getWidth(context) * 0.5, 40),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.05,
                  ),
                  Divider(
                    color: Colors.grey.shade600,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyCircularButton(
                        child: Image.asset(
                          "assets/images/google.png",
                        ),
                        func: () {},
                      ),
                      MyCircularButton(
                        child: Image.asset(
                          "assets/images/facebook.png",
                        ),
                        func: () {},
                      ),
                      MyCircularButton(
                        child: Image.asset(
                          "assets/images/phone.png",
                        ),
                        func: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context)
                            .pushNamed(FirstStartScreen.pathname);
                      });
                    },
                    child: const Text("Dont Have an account? SIGNUP"),
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
