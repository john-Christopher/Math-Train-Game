import 'package:esimapp/component/BgMusic.dart';
import 'package:esimapp/screens/StageSceen.dart';
import 'package:flutter/material.dart';
import '../component/global.dart' as globals;


class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {

  final String welcome1 = "Welcome to Math-train Game, where you can learn and have fun at the same time.";
  final String welcome2 = "Press 'Play' to proceed.";

  bool _dialogNext = false;
  bool _settingDrop = globals.dropdownSetting;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/new_bg_img.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color.fromARGB(71, 132, 132, 132),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(25, 55, 15, 25),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              _settingDrop = !_settingDrop;
                            });
                          }, 
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                            color: Color(0xFF333d29),
                            shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 7,
                                  color: Color(0xFFb6ad90)
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ), 
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Center(
                        child: Text(
                        'Welcome to \nMath-Train \nGame',
                        style: TextStyle(
                          fontFamily: 'Rubber',
                          fontSize: 52,
                          color: Color(0xFFFFFFFF),
                          shadows: <Shadow>[
                              Shadow(
                                offset: Offset(4, 5),
                                blurRadius: 7.0,
                                color: Color(0xFF333d29),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  const EdgeInsetsDirectional.fromSTEB(15, 100, 15, 15),
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => const StageScreenWidget()
                            ),
                          );
                        },
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xFFFFFFFF),
                          ),
                          shape: MaterialStatePropertyAll<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                          fixedSize: MaterialStatePropertyAll<Size>(
                            Size.fromWidth(340),
                          )
                        ),
                        child:  const Text(
                          'Play',
                          style: TextStyle(
                            color: Color(0xFF333d29),
                            fontFamily: 'Open Sans',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: Image(
                        image: AssetImage(
                          'assets/img/boy.png',
                        ),
                        width: 150,
                        height: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                      child: Container(
                        width: 200,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(117, 0, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                              child: Text(
                                _dialogNext ? welcome2 : welcome1,
                                style: const TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Visibility(
                              visible: !_dialogNext,
                              child: Align(
                                alignment: const AlignmentDirectional(1.00, 1.00),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _dialogNext = true;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ) 
              ],
            ),
          ),
        ),
      );
  }
}
