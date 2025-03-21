import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'all_method_channel.dart';

abstract class AllPlatform extends PlatformInterface {
  /// Constructs a AllPlatform.
  AllPlatform() : super(token: _token);

  static final Object _token = Object();

  static AllPlatform _instance = MethodChannelAll();

  /// The default instance of [AllPlatform] to use.
  ///
  /// Defaults to [MethodChannelAll].
  static AllPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AllPlatform] when
  /// they register themselves.
  static set instance(AllPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
