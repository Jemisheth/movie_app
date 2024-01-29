import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      SizedBox(
        height: size.height,
        width: double.infinity,
        child: Image.asset(
          'assets/back.jpg',
          fit: BoxFit.fill,
        ),
      )
    ]);
  }
}
