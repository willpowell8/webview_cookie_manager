import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'webview_cookie_manager_platform_interface.dart';

/// An implementation of [WebviewCookieManagerPlatform] that uses method channels.
class MethodChannelWebviewCookieManager extends WebviewCookieManagerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('webview_cookie_manager');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
