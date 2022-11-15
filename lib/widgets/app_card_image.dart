import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage = "images/user_face.png";
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
          ),
        )
      ],
    );
  }
}