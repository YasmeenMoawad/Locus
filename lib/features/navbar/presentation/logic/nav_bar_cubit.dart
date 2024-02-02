import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState());
  int index = 0;

  void onChangedTab(int index) {
      this.index = index;
      emit(ButtonPressed(this.index));
  }
}
