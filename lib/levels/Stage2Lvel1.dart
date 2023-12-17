import 'package:esimapp/levels/Stage2Level2.dart';
import 'package:flutter/material.dart';

class Stage2Level1 extends StatelessWidget {
  const Stage2Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15, 25, 15, 15),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 540,
            decoration: const BoxDecoration(
              color: Color(0x76000000),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Station 2: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Malilipot to Bacacay',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )
                        )
                      ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Solve this Triva Question: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'What is the Greek word for WOOD',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          )
                        )
                      ]
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'N',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            '3^x+1 = 81',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Y',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            '9^3x−1 =1/27',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'O',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            '9^2x+1/3 = 81',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      width: 100,
                      height: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'X',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            '64^2x+1 = 4^x-3',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      width: 100,
                      height: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'L',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            '2^3x+5 - 3^2 =23',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(), 
                        ),
                        child: const Column(
                          children: [
                            TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: ''
                              ),
                            ),
                            Text(
                              '6/5',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(), 
                        ),
                        child: const Column(
                          children: [
                            TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: ''
                              ),
                            ),
                            Text(
                              '1/6',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(), 
                        ),
                        child: const Column(
                          children: [
                            TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: ''
                              ),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(), 
                        ),
                        child: const Column(
                          children: [
                            TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: ''
                              ),
                            ),
                            Text(
                              '5/6',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(), 
                        ),
                        child: const Column(
                          children: [
                            TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: ''
                              ),
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Stage2Level2()));
                  }, 
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Colors.white,
                    ),
                    fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromWidth(270),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF414833)
                    ),
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}