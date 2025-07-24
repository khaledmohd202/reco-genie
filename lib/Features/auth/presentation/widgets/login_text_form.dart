import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reco_genie_task/core/common/widgets/custom_text_field.dart';
import 'package:reco_genie_task/core/extensions/context_extension.dart';
import 'package:reco_genie_task/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = true;

  // late AuthBloc _bloc;

  @override
  void initState() {
    super.initState();
    // _bloc = context.read<AuthBloc>();
  }

  @override
  void dispose() {
    // _bloc.emailController.dispose();
    // _bloc.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _bloc.formKey,
      child: Column(
        children: [
          //Email
            CustomTextField(
              controller: TextEditingController(),
              // controller: _bloc.emailController,
              hintText: 'email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid(value ?? '')) {
                  return 'Invalid Email';
                }
                return null;
              },
            ),
          SizedBox(height: 25.sp),
          //Password
             CustomTextField(
              controller: TextEditingController(),
              // controller: _bloc.passwordController,
              hintText: 'password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return 'Invalid Password';
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: context.color.textColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
