import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class Range_option extends StatelessWidget {
  const Range_option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0XFFF1F1F1), width: 1),
              borderRadius: BorderRadius.circular(12))),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 8),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              weight: 16,
              color: Color(0XFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
