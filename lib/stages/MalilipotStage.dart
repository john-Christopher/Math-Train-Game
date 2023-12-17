import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage2Lvel1.dart';
import 'package:flutter/material.dart';

class MalilipotStage extends StatelessWidget {
  const MalilipotStage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StageScreenMalilipot(),
      ),
    );
  }
}


class StageScreenMalilipot extends StatefulWidget {
  const StageScreenMalilipot({super.key});

  @override
  State<StageScreenMalilipot> createState() => _StageScreenMalilipotState();
}

class _StageScreenMalilipotState extends State<StageScreenMalilipot> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/forrest.jpg',
              ),
              fit: BoxFit.cover,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stage2Level1(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}