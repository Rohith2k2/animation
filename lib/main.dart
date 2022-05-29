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
        tween: Tween<double>(begin: -100.0, end: 100.0),
        builder: (context, child, value) {

          return Transform.translate(
            offset: Offset(value, 0),
            child: child,
          );
        },
        // there is a button
        child:
        Stack(
          children: [
            Positioned(
                top: 0.2,
                left: 0.0,
                right: 0.0,
                child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      color: Colors.blue[50],
                      child:

             
                      Text('FoodyGuru',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 70,
                          letterSpacing: 5,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 10
                            ..color = Colors.red,
                        ),
                      ),
           

                    )
                )
            )
          ],
        )
    );
  }
}

