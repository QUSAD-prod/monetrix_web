import 'package:flutter/material.dart';
import 'package:monetrix_web/core/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

class AppTextStyles {
  static final basic = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.text,
    letterSpacing: -0.5,
  );

  static final h1 = basic.copyWith(fontSize: 32.px, fontWeight: FontWeight.w700);
  static final h1Light = basic.copyWith(fontSize: 32.px, fontWeight: FontWeight.w600);

  static final h2 = basic.copyWith(fontSize: 24.px, fontWeight: FontWeight.w700);
  static final h2Light = basic.copyWith(fontSize: 24.px, fontWeight: FontWeight.w600);

  static final h3 = basic.copyWith(fontSize: 20.px, fontWeight: FontWeight.w700);
  static final h3Light = basic.copyWith(fontSize: 20.px, fontWeight: FontWeight.w600);

  static final h4 = basic.copyWith(fontSize: 16.px, fontWeight: FontWeight.w700);
  static final h4Light = basic.copyWith(fontSize: 16.px, fontWeight: FontWeight.w600);

  static final p1 = basic.copyWith(fontSize: 16.px, fontWeight: FontWeight.w500);

  static final p2 = basic.copyWith(fontSize: 14.px, fontWeight: FontWeight.w500);

  static final p3 = basic.copyWith(fontSize: 12.px, fontWeight: FontWeight.w500);

  static final p4 = basic.copyWith(fontSize: 10.px, fontWeight: FontWeight.w500);
}
