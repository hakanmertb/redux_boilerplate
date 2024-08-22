import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:liife/app/features/auth/services/token-service/token-service.dart';
import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:liife/app/features/data-stores/authDataStore/actions.dart';
import 'package:liife/app/features/shared/sdk/lib/api.dart';
import 'package:liife/environments/environment.dev.dart';
import 'package:one_context/one_context.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeApp();
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      _initializeApp();
    }
  }

  Future<void> _initializeApp() async {
    final token = await TokenService.instance.getToken();
    log("token: $token");
    if (token == null || token.isEmpty) {
      StoreProvider.of<AppDataStoreState>(OneContext().context!)
          .dispatch(GetTokenByOauth({"provider": "Descope"}));
    } else {
      defaultApiClient = ApiClient(
        basePath: DevEnvironment.apiBaseUrl,
        authentication: HttpBearerAuth()..accessToken = token,
      );
      StoreProvider.of<AppDataStoreState>(OneContext().context!)
          .dispatch(LoginByToken({
        'token': token,
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_focusNode);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Focus(
          focusNode: _focusNode,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  child: Image.asset('assets/logo.png'),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
