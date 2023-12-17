import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage5Level1.dart';
import 'package:flutter/material.dart';

class LegazpiStage extends StatelessWidget {
  const LegazpiStage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: StageScreenLegazpi(),
      ),
    );
  }
}


class StageScreenLegazpi extends StatefulWidget {
  const StageScreenLegazpi({super.key});

  @override
  State<StageScreenLegazpi> createState() => _StageScreenLegazpiState();
}

class _StageScreenLegazpiState extends State<StageScreenLegazpi> {
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
                'assets/img/mayon.gif',
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
                Stage5Level1(),
              ],
            ),
          ),
        )
      ],
    );
  }
}