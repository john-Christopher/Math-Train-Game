import 'package:esimapp/levels/Stage1Level2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


void main() => runApp(const MatchingType());

class MatchingType extends StatefulWidget {
  const MatchingType({super.key});

  @override
  State<MatchingType> createState() => _MatchingTypeState();
}

class _MatchingTypeState extends State<MatchingType> {

  final bool _onNext = false;

  final databaseRef = FirebaseDatabase.instance.ref();

  List<String> items = ['2x = 16^2x+1', '3x >= 243', 'f(x) = (1/2)^3 - x', '2^x +1 > 129', '10x+2 = y', '2^x+2 - 5 = 27', 'y = 1/9 + 3^x', 'f(x) = 3x^3 - 8', 'x^2+2 = 66', '5^x+4 -1 < 20', '7 + 4^X = 23', 'x^4 - 7  = 21', '4^x - 3 <= 61', 'y = 3x^2 + 7', 'f(x) = 2^x + 1', '0.25 = 5^X'];

  List<String> itemTitles = [
    'Exponential \nEquation',
    'Exponential \nInequality',
    'Exponential \nFunction',
    'None of these',
  ];

  List<String> acceptedItems = [];


  void saveToFirebase(String items, String itemTitles) {
    databaseRef.child('matchingType').push().set({
      'itemName': items,
      'container': itemTitles,
    }).then((_) {
      print('Data saved successfully at ${databaseRef.path}');
    }).catchError((error) {
      print('Error saving data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDraggableList(items),
        buildDragTargetList(itemTitles),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Stage1Level2()));
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.white,
                ),
                fixedSize: MaterialStatePropertyAll<Size>(
                  Size.fromWidth(270)
                ),
              ),
              child: const Text(
                'Submit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget buildDraggableList(List<String> items) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Draggable(
            data: items[index], 
            feedback: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(items[index]),
              ),
            ),
            childWhenDragging: Container(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Card(
                child: ListTile(
                  title: Text(items[index]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }




  Widget buildDragTargetList(List<String> itemTitles) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemTitles.length,
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
                      'assets/img/tabak.png',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 8), // Adjust spacing as needed
                    Text(
                      itemTitles[index],
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
              setState(() {
                acceptedItems.add(items[index]);
                items.remove(data);
              });

              saveToFirebase(items[index], itemTitles[index]);
            },
           );
        },

      ),
    );
  }
}