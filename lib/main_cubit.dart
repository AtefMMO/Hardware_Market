import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardware_market/Features/Account_Screen/presentation/views/account_view.dart';
import 'package:hardware_market/Features/History_Screen/presentation/views/history_view.dart';
import 'package:meta/meta.dart';
import 'Features/Home_Screen/presentation/views/home_view.dart';
import 'Features/WishList_Screen/presentation/views/whishlist_view.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  static MainCubit get(context) => BlocProvider.of(context);
  /*
  This line is added to make it easier to access the MainCubit instance from the context.
  instead of writing this
  BlocProvider.of<MainCubit>(context).changeSelectedIndex(index);
  we only need to write this
  MainCubit.get(context).changeSelectedIndex(index);
  */
  int selectedIndex = 0;
  changeSelectedIndex(int index) {
    selectedIndex = index;
    emit(ChangeSelectedIndexState());
  }

  List<Widget> screens = [
    const HomeView(),
    const WishListView(),
    const HistoryView(),
    const AccountView(),
  ];
}
