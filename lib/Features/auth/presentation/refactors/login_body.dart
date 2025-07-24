import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reco_genie_task/Features/auth/presentation/widgets/login_text_form.dart';
import 'package:reco_genie_task/core/common/widgets/custom_linear_button.dart';
import 'package:reco_genie_task/core/common/widgets/text_app.dart';
import 'package:reco_genie_task/core/extensions/context_extension.dart';
import 'package:reco_genie_task/core/style/fonts/font_weight_helper.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150.sp),

            TextApp(
              text: 'Reco Genie',
              theme: context.textStyle.copyWith(
                fontSize: 35.sp,
                color: context.color.textColor,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            SizedBox(height: 100.sp),

            // Login TextForm
            const LoginTextForm(),
            SizedBox(height: 50.sp),

            //LoginButton
            // const LoginButton(),
            CustomLinearButton(
              onPressed: () {
                // _validateThenDoLogin(context);
              },
              height: 50.sp,
              width: MediaQuery.of(context).size.width,
              child: TextApp(
                text: 'Login',
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10.sp),
          ],
        ),
      ),
    );
  }
}
