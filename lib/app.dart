import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:one_context/one_context.dart';
import 'package:redux/redux.dart';
import 'package:redux_boilerplate/core/rootstore/root_state.dart';
import 'core/appstore/app_state.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  final Store<AppState> appStore;
  final Store<RootState> rootStore;

  const MyApp({super.key, required this.appStore, required this.rootStore});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: rootStore,
      child: StoreProvider(
        store: appStore,
        child: MaterialApp(
          builder: OneContext().builder,
          navigatorKey: OneContext().key,
          title: 'Flutter Redux Boilerplate',
          theme: ThemeData(primarySwatch: Colors.blue),
          initialRoute: AppRoutes.home,
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
