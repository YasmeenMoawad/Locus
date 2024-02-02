part of 'nav_bar_cubit.dart';

@immutable
class NavBarState {}

class ButtonInitial extends NavBarState {}

class ButtonPressed extends NavBarState {
  int index;
  ButtonPressed(this.index);
}


