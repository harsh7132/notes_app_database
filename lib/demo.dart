import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: lol(),
      ),
    ),
  ));
}

class lol extends StatefulWidget {
  const lol({Key? key}) : super(key: key);

  @override
  State<lol> createState() => _lolState();
}

class _lolState extends State<lol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: List.generate(102, (index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 2,
                child: ScaleAnimation(
                  duration: Duration(milliseconds: 3000),
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.deepOrange,
                        child: Center(
                          child: Text(
                            'lol',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
