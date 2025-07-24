import 'package:flutter/material.dart';
import 'package:reco_genie_task/Features/auth/presentation/refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: DarkColors.backgroundColor,
      body: LoginBody(),
    );
  }
}
