import 'package:blocdemo/SecondExample/second_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  SecondBloc? sb;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    sb = BlocProvider.of<SecondBloc>(context);
    sb!.add(CallApiEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: BlocBuilder<SecondBloc, SecondState>(
        builder: (context, state) {
          if (state is ResponseState) {
            List l = state.l;
            return l.length > 0
                ? ListView.builder(
                    itemCount: l.length,
                    itemBuilder: (context, index) {
                      User user = User.fromJson(l[index]);

                      return ListTile(
                        leading: Text("${user.id}"),
                        title: Text("${user.title}"),
                        subtitle: Text("${user.body}"),
                      );
                    },
                  )
                : Center(
                    child: Text("No Data Foud"),
                  );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class User {
  int? userId;
  int? id;
  String? title;
  String? body;

  User({this.userId, this.id, this.title, this.body});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
