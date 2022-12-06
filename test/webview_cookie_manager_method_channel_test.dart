import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_cookie_manager/webview_cookie_manager_method_channel.dart';

void main() {
  MethodChannelWebviewCookieManager platform = MethodChannelWebviewCookieManager();
  const MethodChannel channel = MethodChannel('webview_cookie_manager');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
