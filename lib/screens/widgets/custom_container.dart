import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:figma_design_ui/screens/widgets/details_row.dart';

class CustomContainer extends StatelessWidget {
  final bool showHeader;
  const CustomContainer({
    Key? key,
    required this.showHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: const Color.fromRGBO(240, 222, 222, 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showHeader
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "S.n.",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(6, 9, 48, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(6, 9, 48, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(6, 9, 48, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Working Status",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(6, 9, 48, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              : Container(),
          DetailsRow(num: 1, isOperating: false),
          DetailsRow(num: 2, isOperating: true),
          DetailsRow(num: 3, isOperating: true),
          DetailsRow(num: 4, isOperating: true),
        ],
      ),
    );
  }
}
