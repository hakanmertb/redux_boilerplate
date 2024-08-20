import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:one_context/one_context.dart';
import 'package:redux/redux.dart';
import 'features/data-stores/app-data-store/state.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  final Store<AppState> appStore;

  const MyApp({super.key, required this.appStore});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appStore,
      child: MaterialApp(
        builder: OneContext().builder,
        navigatorKey: OneContext().key,
        title: 'Flutter Redux Boilerplate',
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutes.signInPage,
      ),
    );
  }
}
