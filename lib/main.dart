import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice9/features/car_expenses/logic/car_expenses_cubit.dart';
import 'package:flutter_practice9/features/navigation/app_router.dart';
import 'package:flutter_practice9/shared/app_theme.dart';
import 'package:flutter_practice9/shared/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarExpensesCubit(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        routerConfig: router,
      ),
    );
  }
}
