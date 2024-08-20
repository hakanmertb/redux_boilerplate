import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life/features/data-stores/app-data-store/state.dart';
import 'package:life/features/shared/constants/assets.dart';
import 'package:life/features/shared/constants/colors.dart';
import 'package:life/features/shared/widgets/loading_indicator.dart';

import 'package:redux/redux.dart';

import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (Store<AppState> store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return Scaffold(
            body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 150,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              fit: BoxFit.fitWidth,
                              AppAssets.b,
                              isAntiAlias: true,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 8,
                          child: vm.isLoading
                              ? const LoadingIndicator()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const LoginForm(),
                                      const SizedBox(height: 16.0),
                                      if (vm.errorMessage != null) ...[
                                        Text(
                                          vm.errorMessage!,
                                          style: const TextStyle(
                                            color: AppColors.errorColor,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}

class _ViewModel {
  final bool isLoading;
  final String? errorMessage;

  _ViewModel({
    required this.isLoading,
    required this.errorMessage,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      isLoading: store.state.authenticationState.isLoading,
      errorMessage: store.state.authenticationState.errorMessage,
    );
  }
}
