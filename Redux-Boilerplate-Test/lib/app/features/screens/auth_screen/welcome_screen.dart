import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/authDataStore/actions.dart';
import 'package:njktest2/app/features/data-stores/authDataStore/state.dart';
import 'package:rappider_flutter_widgets/rappider_flutter_widgets.dart';

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
                              const SizedBox(
                                height: 8,
                              ),
                              _buildRappiderButton()
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

Widget _buildRappiderButton() {
  return RappiderButtonFromJson.fromJson(jsonDecode(
      '''{"text":"Hello from Rappider Widget","type":"primary","shape":"default","size":"default","colorType":"default","icon":null,"iconPlacement":null,"transparent":false,"loading":false,"block":false,"disabled":null,"key":"","emitWithoutPopconfirm":null,"popconfirmTitle":"","borderSettings":{"border":"null","borderColor":null,"borderStyle":null,"borderRadius":"5px","borderTop":null,"borderRight":null,"borderBottom":null,"borderLeft":null,"borderTopLeftRadius":null,"borderTopRightRadius":null,"borderBottomLeftRadius":null,"borderBottomRightRadius":null},"marginSettings":null,"paddingSettings":null,"shadowSettings":null,"customColorSettings":{"color":null,"backgroundColor":null},"customSizeSettings":{"width":250,"maxWidth":500,"minWidth":100,"height":48,"maxHeight":600,"minHeight":500},"redirectUrl":null}'''));
}
