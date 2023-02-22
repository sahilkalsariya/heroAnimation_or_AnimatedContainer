import 'package:flutter/material.dart';

class ImplicitePage extends StatefulWidget {
  const ImplicitePage({Key? key}) : super(key: key);

  @override
  State<ImplicitePage> createState() => _ImplicitePageState();
}

class _ImplicitePageState extends State<ImplicitePage> {
  double width = 250;
  double height = 250;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicite Animation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              width: width,
              height: height,
              color: color,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    width = (width == 250) ? 150 : 250;
                    height = (height == 250) ? 150 : 250;
                    color = (color == Colors.red) ? Colors.amber : Colors.red;
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
