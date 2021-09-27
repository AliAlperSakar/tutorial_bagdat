import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/utils/constant/app_constant.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        centerTitle: true,
        title: Text(title,
            style:
                const TextStyle(fontSize: 18.0, color: AppConstant.mainColor)),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
