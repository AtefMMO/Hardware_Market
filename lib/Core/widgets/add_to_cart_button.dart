import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';

class AddToCartButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;

  const AddToCartButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        fixedSize: MaterialStateProperty.all<Size>(
          Size(150.w, 20.h),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
