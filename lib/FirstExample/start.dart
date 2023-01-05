import 'package:blocdemo/FirstExample/first.dart';
import 'package:blocdemo/FirstExample/first_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => FirstBloc(),
    child: first(),
    );
  }
}
