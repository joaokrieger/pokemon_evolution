import 'package:flutter/material.dart';

class Power extends StatelessWidget {
  final int powerLevel;

  const Power({
    required this.powerLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (powerLevel >= 1) ? Colors.red[900] : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (powerLevel >= 2) ? Colors.red[900] : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (powerLevel >= 3) ? Colors.red[900] : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (powerLevel >= 4) ? Colors.red[900] : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (powerLevel >= 5) ? Colors.red[900] : Colors.red[100],
        ),
      ],
    );
  }
}
