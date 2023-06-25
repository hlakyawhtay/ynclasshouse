import 'package:flutter/material.dart';
import 'package:ynclasshouse/consts/colors.dart';

class DotWidget extends StatelessWidget {
  final int pageCount;
  const DotWidget({super.key, required this.pageCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      margin: const EdgeInsets.all(53),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (b, i) {
            final isFill = pageCount <= i;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: !isFill
                          ? kPromaryColor
                          : kPromaryColor.withOpacity(0.3)),
                  color:
                      isFill ? kPromaryColor.withOpacity(0.3) : kPromaryColor,
                  borderRadius: BorderRadius.circular(50)),
              height: 22,
              width: 22,
            );
          }),
    );
  }
}
