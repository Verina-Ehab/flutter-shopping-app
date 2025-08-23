// TO USE:
// context.read<ConnectivityCubit>().state.status
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConnectivityStatus {
  initial,
  connected,
  disconnected,
}

class ConnectivityState {
  final ConnectivityStatus status;

  ConnectivityState({required this.status});
}

// class ConnectivityCubit extends Cubit<ConnectivityState> {
//   final Connectivity connectivity = Connectivity();
//   // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

//   ConnectivityCubit()
//       : super(ConnectivityState(status: ConnectivityStatus.initial)) {
//     _monitorConnectivity();
//   }

//   void _monitorConnectivity() {
//     connectivity.onConnectivityChanged.listen((results) {
//       if (results.contains(ConnectivityResult.none)) {
//         emit(ConnectivityState(status: ConnectivityStatus.disconnected));
//       } else {
//         emit(ConnectivityState(status: ConnectivityStatus.connected));
//       }
//     });
//   }

//   @override
//   Future<void> close() {
//     // _connectivitySubscription.cancel();
//     return super.close();
//   }
// }

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  ConnectivityCubit()
      : super(ConnectivityState(status: ConnectivityStatus.initial)) {
    // Initial check
    _checkInitialConnectivity();
    // Listen to changes
    _monitorConnectivity();
  }

  Future<void> _checkInitialConnectivity() async {
    final List<ConnectivityResult> initialResults =
        await connectivity.checkConnectivity();
    _updateStatus(initialResults);
  }

  void _monitorConnectivity() {
    _connectivitySubscription = connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      // Ensure type is List<ConnectivityResult>
      _updateStatus(results);
    });
  }

  void _updateStatus(List<ConnectivityResult> results) {
    if (results.contains(ConnectivityResult.none)) {
      emit(ConnectivityState(status: ConnectivityStatus.disconnected));
    } else {
      emit(ConnectivityState(status: ConnectivityStatus.connected));
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
