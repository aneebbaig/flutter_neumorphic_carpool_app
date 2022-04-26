import '../widgets/neumorphic_container.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  final List<String> stringList;
  const MyDropDown({required this.stringList});

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      child: DropdownButton<String>(
          isExpanded: true,
          value: stringList[0],
          borderRadius: BorderRadius.circular(10),
          items: stringList.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {}),
    );
  }
}
