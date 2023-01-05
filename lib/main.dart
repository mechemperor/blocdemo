import 'package:blocdemo/FirstExample/first_bloc.dart';
import 'package:blocdemo/FirstExample/start.dart';
import 'package:blocdemo/SecondExample/second.dart';
import 'package:blocdemo/SecondExample/second_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => FirstBloc(),
      ),
      BlocProvider(
        create: (context) => SecondBloc(),
      )
    ],
    child: MaterialApp(
      home: second(),
    ),
  ));
}
