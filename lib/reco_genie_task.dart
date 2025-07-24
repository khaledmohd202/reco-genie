import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reco_genie_task/Features/auth/presentation/screen/login_screen.dart';
import 'package:reco_genie_task/core/style/colors/dark_colors.dart';
import 'package:reco_genie_task/core/style/theme/color_extension.dart';

class RecoGenieTask extends StatelessWidget {
  const RecoGenieTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // color: DarkColors.blueDark,
        theme: ThemeData(
          scaffoldBackgroundColor: DarkColors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: DarkColors.backgroundColor,
            elevation: 0,
          ),
          extensions: <ThemeExtension<dynamic>>[MyColors.dark],
        ),
        home: LoginScreen(),
      ),
    );
  }
}
