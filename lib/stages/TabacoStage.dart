import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/levels/Stage1Level1.dart';
import 'package:flutter/material.dart';
import '../component/global.dart' as globals;

class TabacoStage extends StatefulWidget {
  const TabacoStage({super.key});

  @override
  State<TabacoStage> createState() => _TabacoStageState();
}

class _TabacoStageState extends State<TabacoStage> {

  final bool _onNext = globals.onNext;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/img/tabaco.jpg',
                  ).image,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: const BoxDecoration(
                  color: Color(0x47848484),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SettingsDrop()
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Container(
                              width: 400,
                              height: 700,
                              decoration: const BoxDecoration(
                                color: Color(0x76000000),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, -1.00),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 10, 10),
                                          child: Text(
                                            'Station 1:',
                                            style: TextStyle(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Tabaco to Malilipot',
                                        style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                  _onNext ? const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                        child: Text(
                                          'Distinguish Exponential Equation, Inequality, and\nFunction.',
                                          style: TextStyle(
                                            fontFamily: 'Open Sans',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                  : const Row(),
                                  const Flexible(
                                    child: MatchingType(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      
                    ],
                  
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}