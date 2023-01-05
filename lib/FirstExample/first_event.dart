part of 'first_bloc.dart';

@immutable
abstract class FirstEvent {}

class initialEvent extends FirstEvent
{
  int a;
  initialEvent(this.a);

}

class increvent extends FirstEvent
{

}
