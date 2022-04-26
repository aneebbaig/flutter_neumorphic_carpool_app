// ignore_for_file: use_key_in_widget_constructors

import 'package:car_pool/provider/media_query.dart';
import 'package:car_pool/widgets/my_drop_down.dart';
import 'package:provider/provider.dart';

import '../widgets/my_form.dart';
import '../consts/colors.dart';
import '../widgets/my_text_form_field.dart';

import 'package:flutter/material.dart';

class GetDetailsScreen extends StatelessWidget {
  static const pathName = '/detailsScreen';

  @override
  Widget build(BuildContext context) {
    final List<String> _carDropDown = [
      "Toyota",
      "Honda",
      "Suzuki",
    ];
    final _nameController = TextEditingController();
    final mq = Provider.of<MyMediaQuery>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
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
                      "Enter Details",
                      style: Theme.of(context).textTheme.headline4,
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
                    controller: _nameController,
                    label: "Full Name",
                    iconn: const Icon(Icons.person),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyTextFormField(
                    controller: _nameController,
                    label: "Seats",
                    iconn: const Icon(Icons.chair_rounded),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyTextFormField(
                    controller: _nameController,
                    label: "Car",
                    iconn: const Icon(
                      Icons.car_repair_rounded,
                    ),
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyTextFormField(
                    controller: _nameController,
                    label: "From",
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyTextFormField(
                    controller: _nameController,
                    label: "To",
                  ),
                  SizedBox(
                    height: mq.getHeight(context) * 0.02,
                  ),
                  MyDropDown(stringList: _carDropDown),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
