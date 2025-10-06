import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/duration.dart';
import '../../../constants/sizes.dart';
import 'bullet.dart';

class Bullets extends StatelessWidget {
  const Bullets({
    super.key,
    required this.items,
    required this.pageController,
    required this.currentIdx,
  });

  final List<String> items;
  final PageController pageController;
  final int currentIdx;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((item) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            pageController.animateToPage(
              items.indexOf(item),
              duration: Duration(microseconds: kAnimationDurationShort),
              curve: Curves.easeInOut,
            );
          },
          child: Bullet(
            marginRight: items.indexOf(item) == items.length - 1
                ? 0
                : kHorizontalPaddingL,
            width: // Width variable en fonction de l'écran
                ((MediaQuery.of(context).size.width -
                    (items.length - 1) * kHorizontalPaddingL -
                    kHorizontalPaddingXL) /
                items.length),
            color: items.indexOf(item) == currentIdx
                ? kMainColor
                : kTertiaryColor,
          ),
        );
      }).toList(),
    );
  }
}
