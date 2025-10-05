import 'package:bookly_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation<Offset> _animation;
  late Animation<Offset> _animation;
  // late Tween<double> _animationRotation;
  late Animation<double> _animationRotation;

  @override
  void initState() {
    super.initState();

    // 1. نعمل الكونترولر
    _controller = AnimationController(
      duration: Duration(seconds: 2), // مدة الحركة
      vsync: this,
    )..repeat(reverse: true);

    // 2. نحدد التوين (من 0 إلى 300)
    _animation = Tween<Offset>(
      begin: Offset(0, 15),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

    // _animationRotation = Tween<double>(begin: 0.5, end: 1);
    _animationRotation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    // 3. نبدأ الأنيميشن
    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // TweenAnimationBuilder(
        //   tween: _animationRotation,
        //   duration: Duration(seconds: 5),
        //   builder:
        //       (context, value, child) => Transform.scale(
        //         scale: value,
        //         child: Image.asset(Assets.logo),
        //       ),
        // ),
        ScaleTransition(
          scale: _animationRotation,
          child: Image.asset(Assets.logo),
        ),
        SizedBox(height: 10),

        SlideTransition(
          position: _animation,
          child: Text("Read free Books", textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
