import 'package:esimapp/component/SettingsDrop.dart';
import 'package:flutter/material.dart';

class Stage2Level2 extends StatefulWidget {
  const Stage2Level2({super.key});

  @override
  State<Stage2Level2> createState() => _Stage2Level2State();
}

class _Stage2Level2State extends State<Stage2Level2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    'assets/img/forrest.jpg',
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
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SettingsDrop()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Level2Screen(),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Level2Screen extends StatefulWidget {
  const Level2Screen({super.key});

  @override
  State<Level2Screen> createState() => _Level2ScreenState();
}

class _Level2ScreenState extends State<Level2Screen> {

  List<String> choices = [
    '3x > 27',
    '8^2x => 32',
    '(1/2)^x < 1/64',
    '2^x+3 => 16',
    '5^3x-1 <= 125',
  ];

  List<String> containers = [
    'x => 5/6',
    'x => 1',
    'x > 3',
    'x <= 4/3',
    'x > 6',
  ];

  int choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 640,
      decoration: const BoxDecoration(
        color: Color(0x76000000),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Matching Type: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Solve for the values of x for each of the\nfollowing exponential inequalities that can be found\non the mat. Drag the inequality item going to the\nbayong/karagumoy basket.',
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
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/banig.jpg',
                ),
                fit: BoxFit.cover,
              )
            ),
            child: ListView.builder(
              itemCount: choices.length,
              itemBuilder: (context, index) {
                return Draggable(
                  data: choices[index], 
                  feedback: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(choices[index]),
                    ),
                  ),
                  childWhenDragging: Container(),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Card(
                      child: ListTile(
                        title: Text(choices[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: containers.length,
              itemBuilder: (context, index) {
                return DragTarget(
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      margin: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/bayong.png',
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(height: 8), // Adjust spacing as needed
                          Text(
                            containers[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                  onAccept: (data) {
            
                  },
                );
              },
            
            ),
          ),
        ],
      ),
    );
  }
}