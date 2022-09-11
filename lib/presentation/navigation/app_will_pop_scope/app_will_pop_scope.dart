import 'dart:io';

import 'package:example_hack2hire/data/providers/app_navigatior_provider.dart';
import 'package:example_hack2hire/presentation/navigation/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Use `AppWillPopScope` at root screen: splash, login, main menu...
/// and sub navigator view: MyPageNavigatorView.. (must pass sub navigator)
class AppWillPopScope extends ConsumerWidget {
  const AppWillPopScope({
    required this.child,
    this.onWillPop,
    this.navigator,
    Key? key,
  }) : super(key: key);

  final Widget child;

  final WillPopCallback? onWillPop;

  /// If navigator null, auto use root navigator by default
  final AppNavigator? navigator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: onWillPop ?? () => _onWillPop(ref),
      child: child,
    );
  }

  Future<bool> _onWillPop(WidgetRef ref) async {
    if (Platform.isAndroid) {
      final rootNavigator = ref.read(appNavigatorProvider);
      final currentNavigator = navigator ?? rootNavigator;

      // Make navigation for sub navigator
      if (currentNavigator != rootNavigator && currentNavigator.canGoBack()) {
        currentNavigator.goBack();
        return false;
      }
    }

    return true;
  }
}
