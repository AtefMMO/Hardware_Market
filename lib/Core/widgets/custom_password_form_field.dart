import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../App_Theme/app_theme.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final Icon prefixIcon;

  CustomPasswordFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  _CustomPasswordFormFieldState createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool _obscureText = true; // Track whether the text is obscured

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the boolean
    });
  }

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
              cursorColor: AppTheme.darkGrey,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: widget.labelText,
                hintText: widget.hintText,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: AppTheme.blueColor,
                  ),
                  onPressed: _toggleObscureText,
                ),
                hintStyle: Theme.of(context).textTheme.bodySmall,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: EdgeInsets.only(left: 94.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.redColor),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.redColor),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.blueColor),
                  borderRadius: BorderRadius.circular(25.r),
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
              child: widget.prefixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
