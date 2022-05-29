import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';


void main() {
  runApp(
      const MaterialApp(
          home: Page()
      ));
}



class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  var control = CustomAnimationControl.play; // state variable

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<double>(
        control: CustomAnimationControl.mirror,
        tween: Tween<double>(begin: 200.0, end: 500.0),
        builder: (context, child, value) {
          return Transform.translate(
            offset: Offset(value, 0),
            child: child,
          );
        },
        child:
        Stack(
          children: [
                      Text('FoodyGuru',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 10
                            ..color = Colors.red,
                        ),
                      ),
                      const Text(
                        'FoodyGuru',
                      style: TextStyle(
                      fontSize: 70,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                        color: Colors.amber,
        ),
      ),


          ],
        )
    );
  }
}

