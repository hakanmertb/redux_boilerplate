import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:one_context/one_context.dart';
import 'package:redux/redux.dart';
import 'features/data-stores/appDataStore/state.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  final Store<AppDataStoreState> appDataStore;

  const MyApp({super.key, required this.appDataStore});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appDataStore,
      child: MaterialApp(
        builder: OneContext().builder,
        navigatorKey: OneContext().key,
        title: 'Flutter Redux Boilerplate',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: AppRoutes.home,
        routes: AppRoutes.routes,
      ),
    );
  }
}
