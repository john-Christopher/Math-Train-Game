import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage4Level1.dart';
import 'package:flutter/material.dart';

class StoDomingoStage extends StatelessWidget {
  const StoDomingoStage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: StageScreenStoDomingo(),
      ),
    );
  }
}


class StageScreenStoDomingo extends StatefulWidget {
  const StageScreenStoDomingo({super.key});

  @override
  State<StageScreenStoDomingo> createState() => _StageScreenStoDomingoState();
}

class _StageScreenStoDomingoState extends State<StageScreenStoDomingo> {
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
                'assets/img/underwater.jpg',
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
                Expanded(child: Stage4Level1())
              ],
            ),
          ),
        )
      ],
    );
  }
}