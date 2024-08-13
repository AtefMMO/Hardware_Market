import 'package:flutter/material.dart';
import 'package:hardware_market/Features/Login_Screen/presentation/views/login_view.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Splash_Screen'),
      ],
    );
  }
}
