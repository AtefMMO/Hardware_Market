import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/manager/home_cubit.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            DropdownButton<String>(
                items: homeCubit.addresses.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  homeCubit.changeAddress(newValue!);
                },
                value: homeCubit.selectedAddress,
                style: Theme.of(context).textTheme.bodyMedium,
                borderRadius: BorderRadius.circular(10.r),
                underline: Container(
                  height: 0.1.h,
                  color: AppTheme.secondaryColor,
                ),
                hint: Text(
                  'Select Address',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                menuMaxHeight: 200.h),
          ],
        );
      },
    );
  }
}
