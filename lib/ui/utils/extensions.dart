import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ConutextExtension on BuildContext{
  AppLocalizations get Localizations => AppLocalizations.of(this)!;
}