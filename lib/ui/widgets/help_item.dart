import 'package:bt_c4/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpItem extends StatelessWidget {
  final String image;
  final String title;
  final bool isSvg;

  const HelpItem({
    super.key,
    required this.image,
    required this.title,
    this.isSvg = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.backgroundColorItem,
        border: Border.all(
          color: AppColors.borderColorItem,
          width: 2
        ),
      ),
      child: Row(
        children: [
          isSvg
              ? SvgPicture.asset(
                  image,
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  image,
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.primaryColorItem,
              fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
