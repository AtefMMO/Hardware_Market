import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';
import 'package:hardware_market/main_cubit.dart';

class MainLayout extends StatelessWidget {
  static const String routeName = 'MainLayout';
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final mainCubit = MainCubit.get(context);
          return Scaffold(
            bottomNavigationBar: BottomNavBar(),
            body: IndexedStack(//this helps in avoiding the rebuilding of the widgets when switching between tabs
              index: mainCubit.selectedIndex,
              children: mainCubit.screens,
            ),
          );
        },
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainCubit = MainCubit.get(context);
    return  BottomNavigationBar(
      onTap: (index) {
        mainCubit.changeSelectedIndex(index);
      },
      currentIndex: mainCubit.selectedIndex,
      selectedItemColor: AppTheme.selectedBottomNavBar,
      unselectedItemColor: AppTheme.unselectedBottomNavBar,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: 'Wishlist'),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Account',
        )
      ],
    );
  }
}
