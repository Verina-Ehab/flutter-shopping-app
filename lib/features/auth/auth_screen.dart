import 'package:flutter/material.dart';

import '../../core/connectivity/custom_auth_layout.dart';
import 'widgets/login_widget.dart';
import 'widgets/register_widget.dart';
import 'widgets/start_widget.dart';

enum AuthView { start, login, register }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // default
  AuthView _currentView = AuthView.start;

  void _showLogin() {
    setState(() {
      _currentView = AuthView.login;
    });
  }

  void _showRegister() {
    setState(() {
      _currentView = AuthView.register;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildView() {
      switch (_currentView) {
        case AuthView.login:
          return LoginWidget(onShowRegister: _showRegister);
        case AuthView.register:
          return RegisterWidget(onShowLogin: _showLogin);
        case AuthView.start:
        default:
          return StartWidget(
            onShowLogin: _showLogin,
            onShowRegister: _showRegister,
          );
      }
    }

    return CustomAuthLayout(
      gradiantColor: true,
      widget: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: buildView(),
      ),
    );
  }
}
