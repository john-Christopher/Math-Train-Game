import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';



class Stage4Level1 extends StatelessWidget {
  const Stage4Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                              child: const Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, -1.00),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 10, 10),
                                          child: Text(
                                            'Station 4:',
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
                                        'Sto. Domingo to Legazpi',
                                        style: TextStyle(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: StoDomingoMultipleChoice(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      );
  }
}

class StoDomingoMultipleChoice extends StatefulWidget {
  const StoDomingoMultipleChoice({super.key});

  @override
  State<StoDomingoMultipleChoice> createState() => _StoDomingoMultipleChoiceState();
}

class _StoDomingoMultipleChoiceState extends State<StoDomingoMultipleChoice> {


  final List<String> questions = [
    'How many jellyfish must be present after 1 hour?',
    'How many jellyfish must be present after 3 hours ?',
    'How many jellyfish must be present after 5 hours ?',
    'What exponential function can be used to model this situation if x is the time and f(x) is the number of jellyfish?',
    'How many hours would it take to have 1024 jellyfish?',
  ];

  final List<List<String>> choices = [
    ['1', '2', '3', '4'],
    ['6', '7', '8', '9'],
    ['10', '16', '32', '64'],
    ['f(x) = 2^x', 'f(x) =(1/2)^x', 'f(x) = x^2', 'f() = 2x'],
    ['12', '10', '8', '6']
  ];

  int questionIndex = 0;




  @override
  Widget build(BuildContext context) {
    int questionNum = questionIndex +1;

    final databaseRef = FirebaseDatabase.instance.ref();

    List<List<bool>> selectedChoices = List.generate(questions.length, (index) => List.filled(choices[questionIndex].length, false));

    
    void nextQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
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


    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Multiple Choice: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'A biologist discovered that a certain \nkind of jellyfish taken from the Legazpi Boulevard doubles \nevery hour. Assume that there is only one jellyfish initially \npresent.',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontStyle: FontStyle.italic,
                        fontSize: 14
                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
          child: RichText(
            text: TextSpan(
              text: 'Question $questionNum: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Open Sans',
                fontSize: 14,
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: questions[questionIndex],
                  style: const TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                )
              ]
            )
          ),
        ),
        const SizedBox(height: 16,),
        Column(
          children: List.generate(
            choices[questionIndex].length, 
            (index) => CheckboxListTile(
              title: Text(
                choices[questionIndex][index],
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Open Sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              fillColor: const MaterialStatePropertyAll<Color>(
                Colors.white,
              ),
              value: selectedChoices[questionIndex][index], 
              onChanged: (value) {
                setState(() {
                  selectedChoices[questionIndex][index] = value!;
                });
              }
            ),
          ),
        ),
        const SizedBox(height: 16,),
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

