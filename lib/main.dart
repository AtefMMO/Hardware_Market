import 'package:flutter/material.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';
import 'package:hardware_market/Features/Login_Screen/presentation/views/login_view.dart';
import 'package:hardware_market/Features/SignUp_Screen/presentation/views/signup_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Features/Splash_Screen/presentation/views/splash_view.dart';
import 'package:hardware_market/main_layout.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashView.routeName,
          routes: {
            SignUpView.routeName: (context) => const SignUpView(),
            MainLayout.routeName: (context) => const MainLayout(),
            SplashView.routeName: (context) => const SplashView(),
            LoginView.routeName: (context) => const LoginView(),
          },
          theme: AppTheme.appTheme),
    );
  }
}
