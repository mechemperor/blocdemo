part of 'first_bloc.dart';

@immutable
abstract class FirstState {}

class FirstInitial extends FirstState {}


class initialState extends FirstState {

  int cnt;
  initialState(this.cnt);



}