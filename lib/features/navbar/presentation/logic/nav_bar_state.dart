part of 'nav_bar_cubit.dart';

@immutable
class NavBarState {}

class ButtonInitial extends NavBarState {}

// ignore: must_be_immutable
class ButtonPressed extends NavBarState {
  int index;
  ButtonPressed(this.index);
}


