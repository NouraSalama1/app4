import 'package:app4/Users.dart';
import 'package:app4/cubit/my_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Users> userList = [];

  @override
  void initState() {
    super.initState();
    
    BlocProvider.of<MyCubit>(context).emitGetAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is GetAllUsers) {
                userList = state.allUsersList;
                return ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: userList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueAccent,
                      child: Center(child: Text(userList[index].name.toString())),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}