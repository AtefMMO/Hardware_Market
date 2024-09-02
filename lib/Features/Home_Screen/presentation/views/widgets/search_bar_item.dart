import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50.h,width: 0.8.sw,
      child: TextFormField(
        cursorColor: AppTheme.darkGrey,
        decoration: InputDecoration(
          hintText: 'Search here...',
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: Icon(Icons.search, color: AppTheme.darkGrey),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.darkGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.darkGrey),
          ),
        ),
      ),
    );
  }
}
