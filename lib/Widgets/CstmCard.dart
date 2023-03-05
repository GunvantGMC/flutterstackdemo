// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stackdemo/Models/CardData.dart';

class CstmCard extends StatelessWidget {
  final CardData cardData;
  const CstmCard({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: cardData.color, width: 2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ClipRRect(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(cardData.img),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                cardData.title,
                style: TextStyle(
                  fontSize: 25.0,
                  color: cardData.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
