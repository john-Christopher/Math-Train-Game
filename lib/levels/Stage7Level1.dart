import 'package:flutter/material.dart';

class Stage7Level1 extends StatefulWidget {
  const Stage7Level1({super.key});

  @override
  State<Stage7Level1> createState() => _Stage7Level1State();
}

class _Stage7Level1State extends State<Stage7Level1> {
  List<dynamic> hasAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 540,
          decoration: const BoxDecoration(
            color: Color(0x35000000),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                    child: Text(
                      'Stage 7 Lesson 1: Camalig to Guinobatan',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                    child: Text(
                      'Representing a Logarithmic Function through its: \n(A) Table of values, (B) Graph & (C) Equation.',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Column A',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1. 𝑓(𝑥) = 𝑙𝑜𝑔3 𝑥 ',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 12,
                            ),
                            // InkWell(
                            //   splashColor: Colors.transparent,
                            //   focusColor: Colors.transparent,
                            //   hoverColor: Colors.transparent,
                            //   highlightColor: Colors.transparent,
                            //   onTap: () async {},
                            //   child:
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '2. 𝑓(𝑥) = 𝑙𝑜𝑔4 𝑥 ',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '3. 𝑓(𝑥) = 𝑙𝑜𝑔5 𝑥 ',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '4. 𝑓(𝑥) = 𝑙𝑜𝑔½ 𝑥 ',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '5. 𝑓(𝑥) = 𝑙𝑜𝑔3 𝑥 ',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Column B',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'A.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'X =  1/25,1/5,1,5,25',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'f(x) = -2,-1,0,1,2',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'B.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'X = 1/9, 1/3, 1, 3, 9',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'f(x) = -2,-1,0,1,2',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'C.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'X =  -1/100, -1/10, 1,\n10, 100',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'f(x) = -2,-1,0,1,2',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'D.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'X =  1/16, 1/4, 1, 4, 16',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'f(x) = -2,-1,0,1,2',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'E.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'X =  4, 2, 1, 1/2, 1/4',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'f(x) = -2,-1,0,1,2',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
