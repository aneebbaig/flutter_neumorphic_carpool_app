import 'package:car_pool/consts/colors.dart';
import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/widgets/my_circular_buttons.dart';
import 'package:car_pool/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstStartScreen extends StatelessWidget {
  static const pathname = '/firstStartScreen';
  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    final TextEditingController phoneNumberController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: mq.getWidth(context) * 0.07,
                  top: mq.getHeight(context) * 0.05),
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
            Padding(
              padding: EdgeInsets.only(
                  left: mq.getWidth(context) * 0.05,
                  right: mq.getWidth(context) * 0.05),
              child: Column(
                children: [
                  SizedBox(height: mq.getHeight(context) * 0.1),
                  MyTextFormField(
                    controller: phoneNumberController,
                    label: 'Phone Number',
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.05,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MyCircularButton(
                        child: const Icon(Icons.arrow_forward), func: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
