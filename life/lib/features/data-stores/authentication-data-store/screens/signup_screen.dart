import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life/features/data-stores/app-data-store/state.dart';
import 'package:life/features/data-stores/authentication-data-store/widgets/signup_form.dart';
import 'package:life/features/shared/constants/assets.dart';
import 'package:life/features/shared/constants/colors.dart';
import 'package:life/features/shared/widgets/loading_indicator.dart';
import 'package:redux/redux.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (Store<AppState> store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          vm.isLoading
                              ? const LoadingIndicator()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SignUpForm(),
                                      if (vm.errorMessage != null) ...[
                                        const SizedBox(height: 16.0),
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
                                ),
                          Image.asset(
                            fit: BoxFit.fitWidth,
                            AppAssets.a,
                            isAntiAlias: true,
                          ),
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
