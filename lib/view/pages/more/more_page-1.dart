import 'dart:io';

import 'package:flutter/material.dart';
import 'package:settings/l10n/l10n.dart';
import 'package:settings/view/pages/settings_page.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class morePage extends StatelessWidget {
  const morePage({super.key});

  static Widget create(BuildContext context) => const morePage();

  static Widget createTitle(BuildContext context) =>
      Text(context.l10n.morePageTitle);

  static bool searchMatches(String value, BuildContext context) => value
          .isNotEmpty
      ? context.l10n.morePageTitle.toLowerCase().contains(value.toLowerCase())
      : false;

  @override
  Widget build(BuildContext context) {
    return SettingsPage(
      children: [
        YaruSection(
          child: YaruTile(
            leading: const Text('Didn\'t find a setting, or it wasn\'t implemented here yet? Click here:'),
            trailing: ElevatedButton.icon(
              onPressed: () => Process.start('settings', []),
              label: const Text('Open'),
              icon: const Icon(YaruIcons.application_bag),
            ),
          ),
        )
      ],
    );
  }
}
