import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
final List<String> addresses= [
    'El hdaya street , El haram , Giza',
    'Address 2 asfasfasf asf',
  ];
  String? selectedAddress;
  changeAddress(String address) {
    selectedAddress = address;
    emit(ChangeAddressState());
  }
}
