import 'package:flutter/material.dart';
import 'app_text_field_small.dart';

class ImageAndTextWidget extends StatelessWidget {
  final String pathImage;
  final String text;

  const ImageAndTextWidget({Key? key, 
    required this.pathImage, 
    required this.text}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(pathImage),
        const SizedBox(width: 5,),
        SmallText(text: text),
      ],
    );
  }
}