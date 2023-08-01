import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vips/Screen/LoginPage.dart';



import '../Animations/FadeAnimations.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key key,}) : super(key: key);

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>
    with TickerProviderStateMixin {
  AnimationController _animationController;
   Animation<double> _animation;
  bool _textVisible = true;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((f) => Navigator.push(context,
        PageTransition(type: PageTransitionType.fade, child: MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpeg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.4),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                      .5,
                      Text(
                        "Vivekananada Institute of Professional Studies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Arise awake and stop not till \nthe goal is reached",
                        style: TextStyle(
                            color: Colors.white, height: 1.4, fontSize: 18),
                      )),
                  SizedBox(
                    height: 100,
                  ),
                  FadeAnimation(
                      1.2,
                      ScaleTransition(
                          scale: _animation,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(37, 150, 185, .9),
                                    Color.fromRGBO(37, 150, 185, .7),
                                  ])),
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 50),
                                opacity: _textVisible ? 1.0 : 0.0,
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  onPressed: () => _onTap(),
                                  child: Text("Log In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19)),
                                ),
                              )))),
                  SizedBox(
                    height: 27,
                  ),
                  FadeAnimation(
                      1.4,
                      AnimatedOpacity(
                        opacity: _textVisible ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 50),
                        child: Align(
                          child: Text(
                            "See More Option In The App",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 15),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  
                ]),
          ),
        ),
      ),
    );
  }
}
