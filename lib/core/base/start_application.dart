// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:merge_mind_ai/core/base/application_base.dart';
import 'package:merge_mind_ai/product/init/aplication_initialize.dart';

Future<void> start() async {
  await ApplicationInitialize().init();
  runApp(
    const ProviderScope(
      child: MergeMindAI(),
    ),
  );
}
