import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/hotels/hotels.dart';
import 'package:flutter_ui_samples/job%20filter/filter.dart';
import 'package:flutter_ui_samples/payment%20options/payment_options.dart';
import 'package:flutter_ui_samples/shipping%20record/screens/shipping_record.dart';
import 'package:flutter_ui_samples/user%20profile/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShippingRecord();
  }
}
