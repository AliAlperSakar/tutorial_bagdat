import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/utils/constant/app_constant.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({Key? key, required this.title, required this.visibleLeading})
      : super(key: key);
  final String title;
  final bool visibleLeading;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
          centerTitle: true,
          title: Text(title,
              style: const TextStyle(
                  fontSize: 18.0, color: AppConstant.mainColor)),
          elevation: 5,
          backgroundColor: Colors.white,
          leading: visibleLeading
              ? const Icon(Icons.arrow_back, color: Colors.black)
              : null),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
