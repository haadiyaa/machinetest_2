import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 100;

  void startBounce() {
    setState(() {
      height = 200;
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        height = 100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: startBounce,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.amber, shape: BoxShape.circle),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.bounceOut,
                width: 50,
                height: height,
              )
            ],
          ),
        ),
      ),
    );
  }
}
