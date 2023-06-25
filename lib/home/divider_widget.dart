import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ynclasshouse/home/controller.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = context.watch<Controller>().size;
    return SizedBox(
      height: 52,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: size.width * .2,
              height: 0.8,
              color: const Color(0xFFD9D9D9),
            ),
          ),
          SizedBox(
            height: 52,
            child: Transform.rotate(
              angle: 45 * (3.141592653589793238 / 180),
              child: Container(
                width: 52,
                height: 52,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const ShapeDecoration(
                  color: Color(0x00D9D9D9),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.9, color: Color(0xFFD9D9D9)),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: size.width * .2,
              height: 0.9,
              color: const Color(0xFFD9D9D9),
            ),
          ),
        ],
      ),
    );
  }
}
