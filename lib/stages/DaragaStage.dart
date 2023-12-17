import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage6Level1.dart';
import 'package:flutter/material.dart';

class DaragaStage extends StatefulWidget {
  const DaragaStage({super.key});

  @override
  State<DaragaStage> createState() => _DaragaStageState();
}

class _DaragaStageState extends State<DaragaStage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/hoyop-hoyopan.jpg',
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color(0x47848484),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SettingsDrop(),
                  ],
                ),
                Stage6Level1(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}