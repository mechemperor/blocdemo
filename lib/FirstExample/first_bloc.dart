import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_event.dart';
part 'first_state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  int cnt =0;

  FirstBloc() : super(FirstInitial()) {
    on<FirstEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<initialEvent>((event, emit) {

      cnt = event.a;
      emit(initialState(cnt));

    });

    on<increvent>((event, emit) {

      cnt ++;
      emit(initialState(cnt));

    });

  }
}
