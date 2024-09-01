import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';
import 'package:hardware_market/Core/widgets/custom_button.dart';
import 'package:hardware_market/Core/widgets/custom_form_field.dart';
import 'package:hardware_market/Features/SignUp_Screen/presentation/views/signup_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 170.h,
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
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  size: 40.r,
                  Icons.email,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomTextFormField(
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppTheme.blueColor,
                ),
                prefixIcon: Icon(
                  size: 40.r,
                  Icons.lock,
                  color: AppTheme.blueColor,
                ),
              ),
              CustomButton(
                text: 'Login',
                onPressed: () {},
                color: AppTheme.blueColor,
                textColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpView.routeName);
                    },
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppTheme.blueColor,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
