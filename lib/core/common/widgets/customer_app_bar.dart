import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reco_genie_task/core/common/widgets/custom_linear_button.dart';
import 'package:reco_genie_task/core/common/widgets/text_app.dart';
import 'package:reco_genie_task/core/extensions/context_extension.dart';
import 'package:reco_genie_task/core/style/fonts/font_weight_helper.dart';

class CustomerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomerAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.color.mainColor,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomLinearButton(
            onPressed: () {
              context.pop();
            },
            child: Center(
              child: SvgPicture.asset(''),
            ),
          ),
          Flexible(
            child: TextApp(
              text: title,
              theme: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
                color: context.color.textColor,
              ),
              // textOverflow: TextOverflow.ellipsis,
            ),
          ),
          const Text(''),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 60.h);
}
