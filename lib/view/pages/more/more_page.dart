import 'dart:io';

import 'package:flutter/material.dart';
import 'package:settings/l10n/l10n.dart';
import 'package:settings/view/pages/settings_page.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  static Widget create(BuildContext context) => const MorePage();

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
              onPressed: () => Process.start('gnome-control-center', []),
              label: const Text('Open'),
              icon: const Icon(YaruIcons.application_bag),
            ),
          ),
        ),
        YaruSection(
          child: YaruTile(
            leading: const Text('Meet (the currently horrible) Floflis Central:'),
            trailing: ElevatedButton.icon(
              onPressed: () => Process.start('central', []),
              label: const Text('Open'),
              icon: const Icon(YaruIcons.application_bag),
            ),
          ),
        )
      ],
    );
  }
}
