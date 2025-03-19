import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'all_platform_interface.dart';

/// An implementation of [AllPlatform] that uses method channels.
class MethodChannelAll extends AllPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('all');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
