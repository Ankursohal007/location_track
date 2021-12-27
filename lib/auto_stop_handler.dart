import 'package:flutter/material.dart';

import 'uclocation.dart';

class AutoStopHandler extends WidgetsBindingObserver {
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        await UClocation.unRegisterLocationUpdate();
        break;
      case AppLifecycleState.resumed:
        break;
    }
  }
}
