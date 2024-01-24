import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState());
  int currentIndex = 0;
  bool _isButtonPressed = false;

  bool get isButtonPressed => _isButtonPressed;

  void buttonState() {
    _isButtonPressed = !_isButtonPressed;
    emit(ButtonPressed());
  }

  void select(index) {
    currentIndex = index;
    emit(NavBarState());
  }
}
