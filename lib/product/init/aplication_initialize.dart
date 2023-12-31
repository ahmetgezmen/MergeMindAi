// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';
import 'package:merge_mind_ai/product/init/hive_adapter_initialize.dart';
import 'package:path_provider/path_provider.dart';

@immutable
final class ApplicationInitialize {
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_init, (error, stack) {
      Logger().e(error);
    });
  }

  Future<void> _init() async {
    await DeviceUtility.instance.initPackageInfo();
    final document = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(document.path);
    adapterInitializing();
  }
}
