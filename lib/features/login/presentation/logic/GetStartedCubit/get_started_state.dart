part of 'get_started_cubit.dart';

@immutable
sealed class GetStartedState {}

final class GetStartedInitial extends GetStartedState {}
final class GetStartedLoading extends GetStartedState {}
final class GetStartedSuccess extends GetStartedState {}
final class GetStartedError extends GetStartedState {}
