import 'package:esimapp/component/PopUpQuestions.dart';
import 'package:flutter/material.dart';

class Stage6Level1 extends StatefulWidget {
  const Stage6Level1({super.key});

  @override
  State<Stage6Level1> createState() => _Stage6Level1State();
}

class _Stage6Level1State extends State<Stage6Level1> {
  List<dynamic> hasAnswers = [];

  void chkAnsweredQuestion(int questionNum) {
    setState(() {
      hasAnswers.add(questionNum);
    });

    print('Question Number added');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: 640,
        margin: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 25),
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
                  padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 10),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Station 6: ',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Daraga to Camalig',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  RichText(
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
                            text:
                                'Let us know what is inside the cave by \nclicking the number and solve for the logarithmic \nequation.',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 300,
              margin: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: hasAnswers.contains(1)
                                  ? const Color(0xFFB8D159)
                                  : const Color.fromARGB(255, 209, 89, 105),
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          onTap: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DaragaLevel1Questions(),
                                ));
                          },
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(2)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(3)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(4)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(5)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(6)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '6',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(7)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(8)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '8',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(9)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '9',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(10)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '10',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: hasAnswers.contains(11)
                              ? const Color(0xFFB8D159)
                              : const Color.fromARGB(255, 209, 89, 105),
                        ),
                        child: const Center(
                          child: Text(
                            '11',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            //   child: TextButton(
            //     onPressed: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const DaragaLevel1Questions(),
            //       ),
            //     ),
            //     style: ButtonStyle(
            //         backgroundColor:
            //             const MaterialStatePropertyAll<Color>(Colors.white),
            //         fixedSize: MaterialStatePropertyAll<Size>(Size.fromWidth(
            //           MediaQuery.of(context).size.width - 40,
            //         ))),
            //     child: const Text(
            //       'Start at Question 1',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontFamily: 'Open Sans',
            //         fontSize: 14,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
