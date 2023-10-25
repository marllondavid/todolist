import 'package:flutter/material.dart';
import 'package:todolist/app/core/database/sqlite_connection_factory.dart';

class SqlAdmConnection with WidgetsBindingObserver {
  final connection = SqliteConnectionFactory();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
        connection.closeConnection();
        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}
