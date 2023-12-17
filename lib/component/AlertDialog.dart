import 'dart:io';

import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      title: const Text(
        'Exit Game',
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: const Text(
        'Are you sure you want to exit the game?',
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => exit(0), 
          child: const Text(
            'Confirm',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context), 
          child: const Text(
            'Cancel',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}