import 'package:flutter/material.dart';

List<DetailsRow> detailsRows = [];

class DetailsRow extends StatelessWidget {
  final int num;
  final bool isOperating;
  const DetailsRow({
    Key? key,
    required this.num,
    required this.isOperating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$num",
          style: TextStyle(
            fontSize: 10,
            color: Color.fromRGBO(54, 50, 50, 1),
          ),
        ),
        const Text(
          "Sinamangal tube well",
          style: TextStyle(
            fontSize: 10,
            color: Color.fromRGBO(54, 50, 50, 1),
          ),
        ),
        const Text(
          "sinamangal",
          style: TextStyle(
            fontSize: 10,
            color: Color.fromRGBO(54, 50, 50, 1),
          ),
        ),
        Container(
          height: 20,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isOperating ? Colors.green : Colors.red),
          child: Center(
            child: Text(
              isOperating ? "Operating" : "Not Operating",
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
