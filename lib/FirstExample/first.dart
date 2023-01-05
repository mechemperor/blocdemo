import 'package:blocdemo/FirstExample/first_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  int? a;

  FirstBloc? f;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    a = 10;

    f = BlocProvider.of<FirstBloc>(context);

    f!.add(initialEvent(a!));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: () {
        f!.add(increvent());
      }, child: BlocBuilder<FirstBloc, FirstState>(

        builder: (context, state) {
          if(state is initialState)
            {
              return Text("${state.cnt}");
            }
            return Text("10");
        },
      )),

    );
  }
}
