import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:life/features/data-stores/app-data-store/state.dart';
import 'package:life/features/shared/constants/strings.dart';
import 'package:life/features/shared/utils/validators.dart';
import 'package:life/features/shared/widgets/custom_buton.dart';

import '../redux/actions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // Dispatch login action
      StoreProvider.of<AppState>(context).dispatch(
        SignUpRequest(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: AppStrings.name),
            obscureText: true,
            validator: Validators.validatePassword,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: AppStrings.surname),
            obscureText: true,
            validator: Validators.validatePassword,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: AppStrings.nickname),
            obscureText: true,
            validator: Validators.validatePassword,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: AppStrings.email),
            validator: Validators.validateEmail,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: AppStrings.password),
            obscureText: true,
            validator: Validators.validatePassword,
          ),
          const SizedBox(height: 30.0),
          CustomButton(
            text: AppStrings.signUp,
            onPressed: _submit,
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
