import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SecondPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: Duration(seconds: 3));
    controller.forward();
    return Scaffold(
      body: Center(
        child: GrowingContainer(
          controller: controller,
        ),
      ),
    );
  }
}

class GrowingContainer extends AnimatedWidget {
  GrowingContainer({AnimationController controller})
      : super(
            listenable: Tween<double>(begin: 0, end: 200).animate(controller));

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return Container(
      color: Colors.red,
      height: animation.value,
      width: animation.value,
    );
  }
}
