import 'package:esimapp/component/SettingsDrop.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';



class Stage1Level2 extends StatelessWidget {
  const Stage1Level2({super.key});

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
                                  Flexible(
                                    child: TabacoMultipleChoice(),
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

class TabacoMultipleChoice extends StatefulWidget {
  const TabacoMultipleChoice({super.key});

  @override
  State<TabacoMultipleChoice> createState() => _TabacoMultipleChoiceState();
}

class _TabacoMultipleChoiceState extends State<TabacoMultipleChoice> {


  final List<String> questions = [
    'I am an Exponential Function',
    'I belong to the Exponential Inequality',
    'I am an Exponential Equation',
    'There is something in me that is why I am not an Exponential Function',
    'I am not an exponential function, neither exponential inequality nor exponential equation',
  ];

  final List<List<String>> choices = [
    ['y = 2^x - 1', 'x^4 - 5 = 189', 'f(x) = 5^x', '6^X < 216'],
    ['2^x + 3 = 64', 'x^2 > x - 12', '0.3^x <= 0.09', '2^x+1 = > 8^2x'],
    ['y = x^1/2', '(1/4)^x = 4^5x', 'f(x) = 6^x', '7^x+1 = 49'],
    ['f(x) = x^3 + 8', 'y = 5^x - 1', 'y = (-3)^x+4', 'f(x) = 1^x+2'],
    ['5^x-1 < 3125',
      '2^x+2 = 256',
      'f(x) = x^5 -1',
      'y = 7x + 1'],
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
                      text: 'Select the best answer',
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

