import 'package:esimapp/screens/StageSceen.dart';
import 'package:flutter/material.dart';


class SettingsDrop extends StatelessWidget {
  const SettingsDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 55, 15, 0),
      child: IconButton(onPressed: () {
        _showOptionsDialog(context);
        }, 
        icon: const Icon(
          Icons.pause,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Game Paused'),
          content: Column(
            children: [
              ListTile(
                title: const Text('Toggle Sound On/Off'),
                onTap: () {
                  // Implement your logic for toggling sound on/off here
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Achievements'),
                onTap: () {
                  // Implement your logic for viewing achievements here
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Exit'),
                onTap: () {
                  // Implement your logic for exiting the app here
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const StageScreenWidget()));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
