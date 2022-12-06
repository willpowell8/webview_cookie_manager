import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'webview_cookie_manager_method_channel.dart';

abstract class WebviewCookieManagerPlatform extends PlatformInterface {
  /// Constructs a WebviewCookieManagerPlatform.
  WebviewCookieManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static WebviewCookieManagerPlatform _instance = MethodChannelWebviewCookieManager();

  /// The default instance of [WebviewCookieManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelWebviewCookieManager].
  static WebviewCookieManagerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WebviewCookieManagerPlatform] when
  /// they register themselves.
  static set instance(WebviewCookieManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
