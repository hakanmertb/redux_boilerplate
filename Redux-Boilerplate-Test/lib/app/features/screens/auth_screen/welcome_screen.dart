import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/authDataStore/actions.dart';
import 'package:njktest2/app/features/data-stores/authDataStore/state.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StoreConnector<AppDataStoreState, AuthState>(
            converter: (store) => store.state.authState,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome!',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: state.isLoading ? 40 : 20),
                    state.isLoading
                        ? const CircularProgressIndicator(
                            backgroundColor: Colors.transparent,
                          )
                        : Column(
                            children: [
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                color: Theme.of(context).primaryColor,
                                onPressed: state.isLoading
                                    ? null
                                    : () => StoreProvider.of<AppDataStoreState>(
                                            context)
                                        .dispatch(GetTokenByOauth(
                                            {"provider": "Google"})),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Brand(
                                      Brands.google,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('Login via Google'),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                color: Theme.of(context).primaryColor,
                                onPressed: state.isLoading
                                    ? null
                                    : () => StoreProvider.of<AppDataStoreState>(
                                            context)
                                        .dispatch(GetTokenByOauth(
                                            {"provider": "Descope"})),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Brand(
                                      Brands.thymeleaf,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('Login via Descope'),
                                  ],
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
