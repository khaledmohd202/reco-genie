import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconTapNavBar extends StatelessWidget {
  const IconTapNavBar({
    required this.onTap,
    required this.icon,
    required this.isSelected,
    super.key,
  });

  final VoidCallback onTap;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        //
        // ignore: deprecated_member_use
        color: isSelected ? Colors.blueAccent : Colors.grey,
        height: 28.h,
      ),
    );
  }
}
