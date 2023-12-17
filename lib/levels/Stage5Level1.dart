import 'package:flutter/material.dart';

class Stage5Level1 extends StatefulWidget {
  const Stage5Level1({super.key});

  @override
  State<Stage5Level1> createState() => _Stage5Level1State();
}

class _Stage5Level1State extends State<Stage5Level1> {
  @override
  Widget build(BuildContext context) {
    return MathDonald();
  }
}


class MathDonald extends StatelessWidget {
  const MathDonald({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 640,
            margin: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 10),
            decoration: const BoxDecoration(
              color: Color(0x76000000),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 25, 5, 10),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Station 5: ',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Legazpi to Daraga',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 5, 5, 10),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Instruction: ',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Match each exponential/logarithmic equation\nwith its logarithmic/exponential form. Type the letter of your \nchoice under the item number in the table below.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 25, 15, 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Image(
                          image: AssetImage(
                            'assets/img/column_a_stage_5.png'
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Image(
                          image: AssetImage(
                            'assets/img/column_b_stage_5.png'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                                              fontSize: 9,

                                            ),
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
                                              fontSize: 9,
                                            ),
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
                                        child: const Center(child: Text('3')),
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
                                              fontSize: 9,

                                            ),
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
                                        child: const Center(child: Text('4')),
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
                                              fontSize: 9,
                                            ),
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                                        child: const Center(child: Text('5')),
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
                                              fontSize: 9,

                                            ),
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
                                        child: const Center(child: Text('6')),
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
                                              fontSize: 9,
                                            ),
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
                                        child: const Center(child: Text('7')),
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
                                              fontSize: 9,

                                            ),
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
                                        child: const Center(child: Text('8')),
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
                                              fontSize: 9,
                                            ),
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
                                        child: const Center(child: Text('9')),
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
                                              fontSize: 9,
                                            ),
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
                                        child: const Center(child: Text('10')),
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
                                              fontSize: 9,
                                            ),
                                          ),
                                        )
                                      ),
                                    ],
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
        Center(
          child: TextButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll<Color>(
                Colors.white,
              ),
              fixedSize: MaterialStatePropertyAll<Size>(
                Size.fromWidth(
                  MediaQuery.of(context).size.width - 40,
                )
              ),
            ),
            child: const Text(
              'Next Level',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}