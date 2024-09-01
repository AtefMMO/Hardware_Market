import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';
import 'package:hardware_market/Core/widgets/custom_button.dart';
import 'package:hardware_market/Core/widgets/custom_form_field.dart';
import 'package:hardware_market/Core/widgets/custom_password_form_field.dart';
import 'package:hardware_market/Features/Login_Screen/presentation/views/login_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
              ),
              const Image(
                image: AssetImage('assets/images/hm.png'),
              ),
        
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'login to your account!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              CustomTextFormField(
                labelText: 'User Name',
                hintText: 'Enter your user name',
                prefixIcon: Icon(
                  size: 50.r,
                  Icons.person_outlined,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomTextFormField(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  size: 40.r,
                  Icons.email,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomPasswordFormField(
                labelText: 'Password',
                hintText: 'Enter your password',

                prefixIcon: Icon(
                  size: 40.r,
                  Icons.lock,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomPasswordFormField(
                labelText: 'Confirm Password',
                hintText: 'Enter your password',

                prefixIcon: Icon(
                  size: 50.r,
                  Icons.lock_reset,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomButton(
                text: 'Login',
                onPressed: () {},
                color: AppTheme.blueColor,
                textColor: Colors.white,
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
