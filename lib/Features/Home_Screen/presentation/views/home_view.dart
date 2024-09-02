import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/manager/home_cubit.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(), child: const HomeViewBody());
  }
}
