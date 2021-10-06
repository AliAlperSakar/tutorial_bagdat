import 'package:flutter/material.dart';
import 'package:tutorial_bagdat/model/player.dart';
import 'package:tutorial_bagdat/model/player_data.dart';
import 'package:tutorial_bagdat/screen/component/custom_bar.dart';
import 'package:tutorial_bagdat/screen/component/custom_row.dart';
import 'package:tutorial_bagdat/screen/player_detail_screen.dart';
import 'package:tutorial_bagdat/service/network.dart';
import 'package:tutorial_bagdat/utils/constant/app_constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(
        title: AppConstant.home_page_title,
        visibleLeading: false,
      ),
      backgroundColor: Colors.white,
      body: buildContent(),
    );
  }

  Center buildContent() {
    return Center(
      child: FutureBuilder<Player?>(
        future: _client.getPlayer(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Player? playerInfo = snapshot.data;
            if (playerInfo != null) {
              List<PlayerData> player = playerInfo.data;
              return ListView.builder(
                itemCount: player.length,
                itemBuilder: (context, index) {
                  PlayerData playerData = snapshot.data!.data[index];
                  return buildPadding(playerData, context);
                },
              );
            }
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  Padding buildPadding(PlayerData playerData, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: [
          CustomRow(
              text: playerData.first_name,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayerDetailScreen(
                            playerData.first_name, playerData.first_name)));
              })
        ],
      ),
    );
  }
}
