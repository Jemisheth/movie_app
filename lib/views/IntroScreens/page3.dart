import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      SizedBox(
        height: size.height,
        width: double.infinity,
        child: Image.asset(
          'assets/page3.jpg',
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
