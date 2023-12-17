import 'package:flutter/material.dart';

class CamaligStage extends StatefulWidget {
  @override
  _CamaligStageState createState() => _CamaligStageState();
}

class _CamaligStageState extends State<CamaligStage> {
  List<Offset?> points = [];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                RenderBox renderBox = context.findRenderObject() as RenderBox;
                points.add(renderBox.globalToLocal(details.globalPosition));
              });
            },
            onPanEnd: (details) => points.add(null),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: CustomPaint(
                painter: MyPainter(points),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColumnItem('A1'),
              ColumnItem('A2'),
              ColumnItem('A3'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColumnItem('B1'),
              ColumnItem('B2'),
              ColumnItem('B3'),
            ],
          ),
        ],
      );
  }
}

class MyPainter extends CustomPainter {
  final List<Offset?> points;

  MyPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ColumnItem extends StatelessWidget {
  final String text;

  ColumnItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text),
    );
  }
}
