import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return LoginViewBody();
  }
}
