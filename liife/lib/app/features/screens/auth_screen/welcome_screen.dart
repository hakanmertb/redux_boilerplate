import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:liife/app/features/data-stores/authDataStore/actions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StoreProvider.of<AppDataStoreState>(context)
        .dispatch(GetTokenByOauth({"provider": "Descope"}));
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(),
    );
  }
}
