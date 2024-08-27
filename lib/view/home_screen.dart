import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofit_flutter/cubit/my_cubit.dart';
import 'package:retrofit_flutter/jsontodartmodel/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> usersList = [];
  User user = User();

  @override
  void initState() {
    super.initState();

    BlocProvider.of<MyCubit>(context).emitGetAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Retrofit')),
      ),
      body: Column(
        children: [
          BlocBuilder<MyCubit, MyState>(
            builder: (context, state) {
              if (state is GetAllUsers) {
                usersList = (state).allUsersList;
                return ListView.builder(
                   shrinkWrap: true,
                  padding: const EdgeInsets.all(12),
                  itemCount: usersList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      height: 50,
                      child: Center(
                          child: Text(usersList[index].gender.toString())),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
