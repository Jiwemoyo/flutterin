import 'package:bootstrap_flutter/bootstrap_flutter.dart';
import 'package:flutter/material.dart';

class Bootstrap extends StatelessWidget {
  const Bootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBootstrap(
      children: [
        Component(
          style: 'lg-4',
          child: Container(
            width: double.infinity,
            height: double.maxFinite,
            color: Colors.deepPurple,
          ),
        )
      ],
    );
  }
}
