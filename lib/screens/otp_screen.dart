import 'package:car_pool/consts/colors.dart';
import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/widgets/neumorphic_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/my_text_form_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = Provider.of<MyMediaQuery>(context);
    List<TextEditingController> controllers = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: mq.getWidth(context) * 0.04,
            right: mq.getWidth(context) * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mq.getHeight(context) * 0.03,
              ),
              Text(
                "Enter OTP",
                style: Theme.of(context).textTheme.headline3,
              ),
              Center(
                child: SizedBox(
                  height: mq.getHeight(context) * 0.15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (i) => SizedBox(
                    width: mq.getWidth(context) * 0.15,
                    child: MyTextFormField(
                      controller: controllers[i],
                      label: '',
                      rad: 30,
                    ),
                  ),
                ).toList(),
              ),
              SizedBox(
                height: mq.getHeight(context) * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: NeumorphicContainer(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(mq.getWidth(context) * 0.8,
                          mq.getHeight(context) * 0.03),
                    ),
                    child: Text(
                      'Verify',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
