import 'package:flutter/material.dart';
import 'package:settings/l10n/l10n.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class DefaultAppsPage extends StatelessWidget {
  const DefaultAppsPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const DefaultAppsPage();

  static Widget createTitle(BuildContext context) =>
      Text(context.l10n.defaultAppsPageTitle);

  static bool searchMatches(String value, BuildContext context) =>
      value.isNotEmpty
          ? context.l10n.defaultAppsPageTitle
              .toLowerCase()
              .contains(value.toLowerCase())
          : false;

  @override
  Widget build(BuildContext context) {
    return YaruPage(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _DefaultAppRow(
            label: context.l10n.defaultAppsWebLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
          _DefaultAppRow(
            label: context.l10n.defaultAppsEmailLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
          _DefaultAppRow(
            label: context.l10n.defaultAppsCalendarLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
          _DefaultAppRow(
            label: context.l10n.defaultAppsMusicLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
          _DefaultAppRow(
            label: context.l10n.defaultAppsVideosLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
          _DefaultAppRow(
            label: context.l10n.defaultAppsPhotosLabel,
            options: const ['Chrome', 'Firefox'],
            onChanged: (v) {},
          ),
        ],
      )
    ]);
  }
}

class _DefaultAppRow extends StatelessWidget {
  final String label;
  final List<String> options;
  final Function(String?) onChanged;

  const _DefaultAppRow({
    Key? key,
    required this.label,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(label),
        const SizedBox(
          width: 40,
        ),
        DropdownButton<String>(items: [
          for (var option in options)
            DropdownMenuItem(
              value: option,
              child: Text(option),
            )
        ], onChanged: onChanged)
      ],
    );
  }
}
