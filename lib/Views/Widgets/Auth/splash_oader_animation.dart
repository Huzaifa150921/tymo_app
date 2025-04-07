import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashOaderAnimation extends StatelessWidget {
  const SplashOaderAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          LoadingAnimationWidget.halfTriangleDot(color: Colors.red, size: 90),
    );
  }
}
