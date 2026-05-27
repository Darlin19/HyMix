import 'package:audio_hymix/app/hy_mix_app.dart';
import 'package:audio_hymix/core/di/service_locator.dart';
import 'package:audio_hymix/core/logger/app_logger.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:audio_hymix/core/config/app_config.dart';

void main() async {
  // Initialize logger
  AppLogger.init();
  AppLogger.info('App starting...');

  // Initialize service locator (DI)
  try {
    await setupServiceLocator();
    AppLogger.info('Service locator initialized');
  } catch (e) {
    AppLogger.error('Failed to initialize service locator', e);
    rethrow;
  }

  runApp(const HyMix());
  
  doWhenWindowReady(() {
    const initialSize = Size(
      AppConfig.defaultWindowWidth,
      AppConfig.defaultWindowHeight,
    );
    appWindow.minSize = const Size(
      AppConfig.minWindowWidth,
      AppConfig.minWindowHeight,
    );
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = AppConfig.appName;
    appWindow.show();
    AppLogger.info('Window initialized');
  });
}
