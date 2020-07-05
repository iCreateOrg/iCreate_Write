import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class ForwardAnimation extends StatefulWidget {
  final Widget child;
  final int milliseconds;

  ForwardAnimation({this.child, this.milliseconds = 500});
  @override
  _ForwardAnimationState createState() => _ForwardAnimationState();
}

class _ForwardAnimationState extends State<ForwardAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController = AnimationController(
        duration: Duration(milliseconds: widget.milliseconds), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  var darktheme;
  @override
  Widget build(BuildContext context) {
    // darktheme = Provider.of<ThemeNotifier>(context).isDarkModeOn ?? false;

    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Material(
            color: Color(0xff0D141A),
            child: Transform(
                transform:
                    Matrix4.translationValues(animation.value * width, 0, 0),
                child: widget.child),
          );
        });
  }
}

class LogoAnimation extends StatefulWidget {
  final Widget child;
  final int milliseconds;
  final Color color;

  LogoAnimation({this.child, this.color, this.milliseconds = 450});
  @override
  _LogoAnimationState createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController = AnimationController(
        duration: Duration(milliseconds: widget.milliseconds), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Material(
            color: widget.color ?? Colors.white,
            child: Transform(
                transform:
                    Matrix4.translationValues(0, animation.value * width, 0),
                child: widget.child),
          );
        });
  }
}

class BackwardAnimation extends StatefulWidget {
  final Widget child;

  BackwardAnimation({this.child});
  @override
  _BackwardAnimationState createState() => _BackwardAnimationState();
}

class _BackwardAnimationState extends State<BackwardAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  start() {
    animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  var darktheme;
  @override
  Widget build(BuildContext context) {
    // darktheme = Provider.of<ThemeNotifier>(context).isDarkModeOn ?? false;
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Material(
          color: Color(0xff0D141A),
          child: Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0, 0),
              child: widget.child),
        );
      },
    );
  }
}