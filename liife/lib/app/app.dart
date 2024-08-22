import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:one_context/one_context.dart';
import 'package:redux/redux.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  final Store<AppDataStoreState> appStore;

  const MyApp({super.key, required this.appStore});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appStore,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: OneContext().builder,
        navigatorKey: OneContext().key,
        title: 'Flutter Redux Boilerplate',
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: AppRoutes.main,
      ),
    );
  }
}
