import 'package:esimapp/component/SettingsDrop.dart';
import 'package:esimapp/screens/StageSceen.dart';
import 'package:flutter/material.dart';

class Stage3Level1 extends StatelessWidget {
  const Stage3Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/sto_domingo_park.jpg',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SettingsDrop(),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 540,
                      decoration: const BoxDecoration(
                        color: Color(0x76000000),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                text: 'Station 3: ',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Bacacay to Sto. Domingo',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Open Sans'
                                    )
                                  )
                                ]
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Instruction: ',
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Type the correct answers on the ',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white,
                                        )
                                      ),
                                      TextSpan(
                                        text: 'RED',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Open Sans',
                                          fontSize: 14,
                                          color: Colors.red,
                                          backgroundColor: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                       TextSpan(
                                        text: ' \nnumber. Select from the options below.',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white,
                                        )
                                      ),
                                    ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'y = 3^x',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 4,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('X')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('Y'))
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('-2')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: TextFormField(
                                          autofocus: false,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            border: UnderlineInputBorder(),
                                            hintText: 'Type here ...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,

                                            ),
                                            label: Center(
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('-1')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: TextFormField(
                                          autofocus: false,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            border: UnderlineInputBorder(),
                                            hintText: 'Type here ...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,

                                            ),
                                            label: Center(
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('0')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: TextFormField(
                                          autofocus: false,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            border: UnderlineInputBorder(),
                                            hintText: 'Type here ...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,

                                            ),
                                            label: Center(
                                              child: Text(
                                                '3',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('1')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: TextFormField(
                                          autofocus: false,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            border: UnderlineInputBorder(),
                                            hintText: 'Type here ...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,

                                            ),
                                            label: Center(
                                              child: Text(
                                                '4',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('2')),
                                      ),
                                      Container(
                                        width: 55,
                                        height: 34,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                        child: TextFormField(
                                          autofocus: false,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            border: UnderlineInputBorder(),
                                            hintText: 'Type here ...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,

                                            ),
                                            label: Center(
                                              child: Text(
                                                '5',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Options',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 4,
                            margin: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 62,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 62,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '9',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 62,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '1/9',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 62,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '1/3',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 62,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const StageScreenWidget())),
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll<Size>(
                            Size.fromWidth(MediaQuery.of(context).size.width - 40),
                          ),
                          backgroundColor: const MaterialStatePropertyAll<Color>(
                            Colors.white,
                          ),
                          shape: const MaterialStatePropertyAll<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            )
                          )
                        ),
                        child: const Text(
                          'Exit Level',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
