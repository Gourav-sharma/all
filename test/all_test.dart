import 'package:flutter_test/flutter_test.dart';
import 'package:all/all.dart';
import 'package:all/all_platform_interface.dart';
import 'package:all/all_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAllPlatform
    with MockPlatformInterfaceMixin
    implements AllPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AllPlatform initialPlatform = AllPlatform.instance;

  test('$MethodChannelAll is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAll>());
  });

  test('getPlatformVersion', () async {
    All allPlugin = All();
    MockAllPlatform fakePlatform = MockAllPlatform();
    AllPlatform.instance = fakePlatform;

    expect(await allPlugin.getPlatformVersion(), '42');
  });
}
