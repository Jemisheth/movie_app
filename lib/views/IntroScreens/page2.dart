import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      SizedBox(
        height: size.height,
        width: double.infinity,
        child: Image.asset(
          'assets/page2.jpg',
          fit: BoxFit.fill,
        ),
      )
    ]);
  }
}
