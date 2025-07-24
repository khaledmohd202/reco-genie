// import 'package:asroo_store/core/common/toast/show_toast.dart';
// import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
// import 'package:asroo_store/core/common/widgets/text_app.dart';
// import 'package:asroo_store/core/extensions/context_extension.dart';
// import 'package:asroo_store/core/languages/lang_keys.dart';
// import 'package:asroo_store/core/routes/app_routes.dart';
// import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
// import 'package:asroo_store/features/auth/presentation/bloc/auth_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:reco_genie_task/core/common/widgets/custom_linear_button.dart';
// import 'package:reco_genie_task/core/common/widgets/text_app.dart';
// import 'package:reco_genie_task/core/extensions/context_extension.dart';
// import 'package:reco_genie_task/core/style/fonts/font_weight_helper.dart';

// class LoginButton extends StatelessWidget {
//   const LoginButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthBloc, AuthState>(
//       listener: (context, state) {
//         state.whenOrNull(
//           success: (userRole) {
//             ShowToast.showToastSuccessTop(
//               // context: context,
//               message: context.translate(LangKeys.loggedSuccessfully),
//             );

//             if (userRole == 'admin') {
//               context.pushNamedAndRemoveUntil(AppRoutes.homeAdmin);
//             } else {
//               context.pushNamedAndRemoveUntil(AppRoutes.mainCustomerScreen);
//             }
//           },
//           error: (error) {
//             ShowToast.showToastErrorTop(
//               // context: context,
//               message: context.translate(error),
//             );
//           },
//         );
//       },
//       builder: (context, state) {
//         return state.maybeWhen(
//           loading: () {
//             return CustomLinearButton(
//               onPressed: () {},
//               height: 50.sp,
//               width: MediaQuery.of(context).size.width,
//               child: const CircularProgressIndicator(color: Colors.white),
//             );
//           },
//           orElse: () {
//             return CustomLinearButton(
//               onPressed: () {
//                 _validateThenDoLogin(context);
//               },
//               height: 50.sp,
//               width: MediaQuery.of(context).size.width,
//               child: TextApp(
//                 text: 'Login',
//                 theme: context.textStyle.copyWith(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeightHelper.bold,
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   void _validateThenDoLogin(BuildContext context) {
//     // if (context.read<AuthBloc>().formKey.currentState!.validate()) {
//     //   context.read<AuthBloc>().add(const AuthEvent.login());
//     // }
//   }
// }
