import 'package:flutter/material.dart';

class AdminStuffScreen extends StatefulWidget {
  const AdminStuffScreen({super.key});

  @override
  State<AdminStuffScreen> createState() => _AdminStuffScreenState();
}

class _AdminStuffScreenState extends State<AdminStuffScreen> {

  final List<String> _stations = [
    'Tabaco', 'Malilipot', 'Sto Domingo', 'Legazpi', 'Daraga', 'Camalig', 'Guinobatan', 'Ligao', 'Oas', 'Polangui'
  ];





  @override
  Widget build(BuildContext context) {
    String dropdownValue = _stations.first;


    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text('Administrator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton(
            value: dropdownValue,
            items: _stations.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(), 
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}