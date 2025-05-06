import 'package:flutter/material.dart';
import 'package:ui_samples/filter.dart';
import 'package:ui_samples/payment_options/payment_options.dart';
import 'package:ui_samples/user_profile/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentOptions();
  }
}
