import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofit_flutter/cubit/my_cubit.dart';
import 'package:retrofit_flutter/injection.dart';
import 'package:retrofit_flutter/repository/my_repo.dart';
import 'package:retrofit_flutter/view/home_screen.dart';
import 'package:retrofit_flutter/webservices/web_services.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        //Without dependency injection
        create: (context) => MyCubit(MyRepo(Webservices(Dio()))),
        child: const HomeScreen(),
      ),
    );
  }
}





//Without dependency injection
//create: (context) => MyCubit(MyRepo(Webservices(Dio()))),


// by using dependency injection (get_it Package)
//create: (context) => getIt<MyCubit>(),