import 'package:bt_c4/common/app_images.dart';
import 'package:bt_c4/common/app_vectors.dart';
import 'package:bt_c4/ui/widgets/help_item.dart';
import 'package:flutter/material.dart';

class HelpView extends StatelessWidget {
  final bool isSvg;

  const HelpView({super.key, this.isSvg = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HelpItem(
            image: isSvg ? AppVectors.faqVector : AppImages.faqImage,
            title: 'FAQ',
            isSvg: isSvg,
          ),
          const SizedBox(height: 12),
          HelpItem(
            image: isSvg ? AppVectors.contactVector : AppImages.groupImage,
            title: 'Contact Us',
            isSvg: isSvg,
          ),
          const SizedBox(height: 12),
          HelpItem(
            image: isSvg ? AppVectors.termsVector : AppImages.termsImage,
            title: 'Terms & Conditions',
            isSvg: isSvg,
          ),
        ],
      ),
    );
  }
}
