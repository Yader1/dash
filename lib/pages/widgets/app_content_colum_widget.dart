import 'package:flutter/material.dart';

class ContentColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
    Container(
      height: 200,
      width: 100,
      color: Colors.amber.shade200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Texto nuevo"),
          ],
        ),
      ),
    );
  }
}