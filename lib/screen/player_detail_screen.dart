import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/utils/constant/app_constant.dart';

import 'component/custom_bar.dart';

class PlayerDetailScreen extends StatelessWidget {
  String title;
  String body;

  PlayerDetailScreen(this.title, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(
        title: AppConstant.player_detail_title,
        visibleLeading: true,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        const Divider(
          height: 3.6,
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              body,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
