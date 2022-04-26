import 'package:car_pool/consts/colors.dart';
import 'package:car_pool/provider/request.dart';
import 'package:car_pool/widgets/my_form.dart';
import 'package:car_pool/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RequestScreen extends StatefulWidget {
  static const pathName = '/requestScreen';
  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    final _pickAndDropController = TextEditingController();
    final requestType = Provider.of<Request>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: MyForm(
          children: [
            MyTextFormField(
                controller: _pickAndDropController,
                label: requestType.getRequestType() ? 'DropOff' : 'Pickup')
          ],
        ),
      ),
    );
  }
}
