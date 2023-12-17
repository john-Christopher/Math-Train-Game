import 'package:flutter/material.dart';
import 'global.dart' as global;



const List<Widget> genderImg = <Widget>[
  Image(
    image: AssetImage('assets/img/boy.png'),
    width: 150,
    height: 200,
  ),
  Image(
    image: AssetImage('assets/img/girl.png'),
    width: 150,
    height: 200,
  ),

];

class GenderToggle extends StatefulWidget {
  const GenderToggle({super.key});

  @override
  State<GenderToggle> createState() => _GenderToggleState();
}



class _GenderToggleState extends State<GenderToggle> {
  final List<bool> _selectedImage = global.selectedImage;
  final _selectedGender = global.selectedGender;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const Text(
          'Select your gender:',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        ToggleButtons(
          onPressed: (int index) {
            setState(() {
              for(int i = 0; i < _selectedImage.length; i++){
                _selectedImage[i] = i == index;
              }

              _selectedGender.add(index);
            });
          },
          borderWidth: 2,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          selectedBorderColor: const Color(0xFFB8D159),
          isSelected: _selectedImage,
          children: genderImg, 
        ),
      ],
    );
  }
}