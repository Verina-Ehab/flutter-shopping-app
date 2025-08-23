import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sprints_microsoft_shopcraft/core/connectivity/connectivity_cubit.dart';

import 'custom_auth_layout.dart';

class CustomNetworkGate extends StatelessWidget {
  final Widget onlineChild;
  final Widget offlineChild;
  final bool? isAppBar;

  const CustomNetworkGate({
    super.key,
    required this.onlineChild,
    required this.offlineChild,
    this.isAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        if (state.status == ConnectivityStatus.connected) {
          return CustomAuthLayout(widget: onlineChild);
        } else {
          return CustomAuthLayout(widget: offlineChild);
        }
      },
    );
  }
}
