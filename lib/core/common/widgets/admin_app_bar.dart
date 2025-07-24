import 'package:reco_genie_task/core/common/widgets/text_app.dart';
import 'package:reco_genie_task/core/extensions/context_extension.dart';
// import 'package:reco_genie_task/core/style/fonts/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reco_genie_task/core/style/fonts/font_family_helper.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdminAppBar({
    required this.title,
    required this.backgroundColor,
    required this.isMain,
    super.key,
  });

  final String title;
  final Color backgroundColor;
  final bool isMain;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          fontSize: 18.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      leading:
          isMain
              ? IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.menu, color: Colors.white),
              )
              : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}
