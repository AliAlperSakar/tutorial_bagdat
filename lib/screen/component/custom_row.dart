import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/utils/constant/app_constant.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: AppConstant.rowColor),
      height: 50,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
            const Icon(Icons.arrow_forward, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
