part of 'second_bloc.dart';

@immutable
abstract class SecondState {}

class SecondInitial extends SecondState {}

class ResponseState extends SecondState {

  List<dynamic> l;

  ResponseState(this.l);


}
