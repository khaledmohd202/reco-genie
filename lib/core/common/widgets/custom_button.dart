import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reco_genie_task/core/common/widgets/text_app.dart';
import 'package:reco_genie_task/core/extensions/context_extension.dart';
import 'package:reco_genie_task/core/style/fonts/font_family_helper.dart';
import 'package:reco_genie_task/core/style/fonts/font_weight_helper.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    super.key,
    this.lastRadius,
    this.threeRadius,
    this.backgroundColor,
    this.textColor,
    this.textAlign,
    this.isLoading = false,
    this.loadingWidth = 30,
    this.loadingHeight = 30,
  });
  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final double? threeRadius;
  final double? lastRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;
  final TextAlign? textAlign;
  final double? loadingWidth;
  final double? loadingHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(threeRadius ?? 20),
              topRight: Radius.circular(threeRadius ?? 20),
              bottomRight: Radius.circular(threeRadius ?? 20),
              bottomLeft: Radius.circular(lastRadius ?? 0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: TextApp(
          text: text,
          theme: context.textStyle.copyWith(
            color: textColor,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
            fontSize: 16.sp,
          ),
          textAlign: textAlign,
        ),
      ),
    );
  }
}
