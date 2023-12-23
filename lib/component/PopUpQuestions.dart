import 'package:esimapp/component/SettingsDrop.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DaragaLevel1Questions extends StatelessWidget {
  const DaragaLevel1Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/img/hoyop-hoyopan.jpg'),
              fit: BoxFit.fitHeight,
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [SettingsDrop()],
                ),
                Center(
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 25, 15, 10),
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
                        Flexible(child: Expanded(child: DaragaHoyopHoyopan()))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DaragaHoyopHoyopan extends StatefulWidget {
  const DaragaHoyopHoyopan({super.key});

  @override
  State<DaragaHoyopHoyopan> createState() => _DaragaHoyopHoyopanState();
}

class _DaragaHoyopHoyopanState extends State<DaragaHoyopHoyopan> {
  int questionIndex = 0;
  int questionNum = 1;

  List<String> questions = [
    'assets/img/daraga_q1.png',
    'assets/img/daraga_q2.png',
    'assets/img/daraga_q3.png',
    'assets/img/daraga_q4.png',
    'assets/img/daraga_q5.png',
    'assets/img/daraga_q6.png',
    'assets/img/daraga_q7.png',
    'assets/img/daraga_q8.png',
    'assets/img/daraga_q9.png',
    'assets/img/daraga_q10.png',
    'assets/img/daraga_q11.png',
  ];

  final List<List<String>> choices = [
    ['S. 243', 'T. 125', 'U. 5', 'V. 3'],
    ['T.7/2', 'U. 9/2', 'V. 1', 'W. 2'],
    ['A. e', 'B. 9/2', 'C. 0', 'D. 1'],
    ['J. 2', 'K. 4', 'L. 36', 'M. 64'],
    ['A. 15', 'E. 17', 'O. 7', 'U. 9'],
    ['A. -1', 'B. -2', 'C. 1', 'D. 2'],
    ['S. 12', 'T. e', 'M. 0', 'P. 1'],
    ['F. 6', 'G. 15', 'H. 4', 'I. 3'],
    ['K. 3', 'N. 4', 'T. 5', 'P. 6'],
    ['A. 27', 'E. 54', 'I. 9', 'O. 3'],
    ['G. 1', 'H. e', 'm. E^2', 'S. e^2 - 2'],
  ];

  final databaseRef = FirebaseDatabase.instance.ref();

  List<List<bool>> selectedChoices = [
    [false, false, false, false], // [1, 0, 0, 0]
    [false, false, false, false], // [0, 1, 0, 0],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false]
  ];

  void nextQuestion() {
    if (questionIndex < questions.length - 1) {

      // if(question)
      setState(() {
        questionIndex++;
        questionNum = questionIndex + 1;
      });
    } else {
      // Quiz completed, you can add your logic here
      print("Quiz completed!");
    }
  }

  void saveToFirebase(int questionNum, List<List<bool>> selectedChoices) {
    databaseRef.child('Stage1Level2').push().set({
      'QuestionNum': questionNum,
      'Answers': selectedChoices[questionIndex],
    }).then((_) {
      print('Data saved successfully at ${databaseRef.path}');
    }).catchError((error) {
      print('Error saving data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    ]),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
            child: Image(
              image: AssetImage(
                questions[questionIndex],
              ),
            )),
        Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: choices[questionIndex].length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  title: Text(
                    choices[questionIndex][index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  checkColor: Colors.black,
                  fillColor: const MaterialStatePropertyAll<Color>(
                    Colors.white,
                  ),
                  value: selectedChoices[questionIndex][index],
                  onChanged: (newValue) {
                    setState(() {
                      selectedChoices[questionIndex][index] = newValue!;
                    });
                  },
                );
              },
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            nextQuestion();
          },
          child: const Text(
            'Next Question',
          ),
        ),
      ],
    );
  }
}
