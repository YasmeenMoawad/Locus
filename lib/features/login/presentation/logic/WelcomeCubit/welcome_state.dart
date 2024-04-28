part of 'welcome_cubit.dart';

@immutable
sealed class WelcomeState {}

final class WelcomeInitial extends WelcomeState {}
final class WelcomeLoading extends WelcomeState {}
final class WelcomeSuccss extends WelcomeState {}
final class WelcomeError extends WelcomeState {}
