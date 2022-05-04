import 'dart:io';

import 'package:safe_change_notifier/safe_change_notifier.dart';

const _defaultWebBrowser = 'default-web-browser';

class DefaultAppsModel extends SafeChangeNotifier {
  Future<void> update(String appName) async {
    await Process.run(
      'xdg-settings',
      [
        'set',
        appName,
        '&',
      ],
    );
  }

  Future<List<String?>?> getDefaultApp(String appName) async {}
}
