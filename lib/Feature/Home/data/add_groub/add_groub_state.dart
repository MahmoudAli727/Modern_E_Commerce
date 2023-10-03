part of 'add_groub_cubit.dart';

@immutable
sealed class AddGroubState {}

class AddGroubInitial extends AddGroubState {}

class AddGroubLoading extends AddGroubState {}

class AddGroubSuccess extends AddGroubState {}

class AddGroubFailure extends AddGroubState {
  final String errmessage;

  AddGroubFailure({required this.errmessage});
}
