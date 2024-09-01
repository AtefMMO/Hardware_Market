import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  String hintText;
  Icon prefixIcon;
  Icon? suffixIcon;
  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            width: 350.w,
            height: 50.h,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                labelText: labelText,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodySmall,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: EdgeInsets.only(left: 94.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.redColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.redColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
              ),
            ),
          ),
          CircleAvatar(
            radius: 47.r,
            backgroundColor: AppTheme.blueColor,
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: AppTheme.secondaryColor,
              child: prefixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
