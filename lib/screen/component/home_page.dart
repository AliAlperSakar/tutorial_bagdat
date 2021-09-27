import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/model/player.dart';
import 'package:tutorial_bagdat/screen/component/custom_bar.dart';
import 'package:tutorial_bagdat/screen/component/custom_row.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var gestureDetector = GestureDetector(
      onTap: () {
        print("TAP");
        fetchPlayers();
      },
      child: Column(
        children: const [CustomRow(text: "ghthyj")],
      ),
    );
    var scaffold = Scaffold(
        appBar: const CustomBar(title: 'Basketball Players'),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: gestureDetector,
        ));
    return scaffold;
  }
}

// Future<List<Player>> fetchPhotos() async {
//   final response =
//       await Dio().get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//   // Use the compute function to run parsePhotos in a separate isolate.
//   return compute(parsePhotos, response.body);
// }

void fetchPlayers() async {
  try {
    var response = await Dio().get('https://www.balldontlie.io/api/v1/players');
    print(response.data);
  } catch (e) {
    print(e);
  }
}
