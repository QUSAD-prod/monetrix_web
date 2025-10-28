import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monetrix_web/core/consts.dart';
import 'package:sizer/sizer.dart';
import 'package:web/web.dart' hide Text;

import 'package:monetrix_web/core/theme/app_colors.dart';
import 'package:monetrix_web/core/theme/app_text_styles.dart';
import 'package:monetrix_web/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) => MaterialApp(
        title: 'Monetrix',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String _apkFileName = '$fileName$versionType$fileVer.apk';
  static const String _apkDownloadUrl = 'assets/apk/$_apkFileName';

  void _downloadFile() {
    final anchor = HTMLAnchorElement();
    anchor.href = _apkDownloadUrl;
    anchor.download = _apkFileName;
    anchor.style.display = 'none';
    document.body?.append(anchor);
    anchor.click();
    anchor.remove();
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: AppColors.electricBlue,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      title: SvgPicture.asset("assets/svg/logo.svg", height: 18.px),
      actions: [
        Text('Уже доступно', style: AppTextStyles.p2.copyWith(color: AppColors.arcticBlue)),
        SizedBox(width: 16.px),
      ],
      centerTitle: false,
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: AppColors.electricBlue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 32.px),
              height: MediaQuery.of(context).size.height - appBar.preferredSize.height,
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/svg/logo.svg", height: 38.px),
                    SizedBox(height: 6.px),
                    Text(
                      "$versionType версия уже доступна",
                      style: AppTextStyles.p1.copyWith(color: AppColors.arcticBlue.withAlpha(200)),
                    ),
                    SizedBox(height: 24.px),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FilledButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(AppColors.arcticBlue),
                          ),
                          onPressed: () => _downloadFile(),
                          child: Text("Скачать APK"),
                        ),
                        SizedBox(width: 12.px),
                        Text(
                          "$versionType $fileVer",
                          style: AppTextStyles.p1.copyWith(
                            color: AppColors.arcticBlue.withAlpha(200),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Скоро в Google Play, RuStore и AppStore",
                      style: AppTextStyles.p1.copyWith(
                        color: AppColors.arcticBlue.withAlpha(200),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 36.px),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 48.px),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.px),
                  topRight: Radius.circular(24.px),
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 800.px),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Monetrix — кросс-платформенное решение для управления и оптимизации личных и бизнес-финансов",
                        style: AppTextStyles.h1.copyWith(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5,
                          height: 1.05,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 12.px),
                      Text(
                        "Мы объединяем ваши счета, карты, кредиты и инвестиции в единую картину, визуализируем финансовое здоровье через цифровой финансовый аватар и даем персональные рекомендации на основе данных и ИИ",
                        style: AppTextStyles.h3.copyWith(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5,
                          height: 1.05,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 96.px),
                        child: Text(
                          "Наша миссия — дать каждому пользователю простой, наглядный и безопасный инструмент финансового управления, который превращает разрозненные данные в понятные решения и помогает уверенно двигаться к целям",
                          style: AppTextStyles.h2.copyWith(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                            height: 1.05,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        "Финансы должны быть понятны и управляемы.",
                        style: AppTextStyles.h1.copyWith(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5,
                          height: 1.05,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 12.px),
                      Text(
                        "Monetrix строит личный «финансовый интерфейс» пользователя — от агрегированной картины доходов/расходов до прогноза и действий: где оптимизировать, что улучшить, на чем сэкономить и как быстрее прийти к желаемому результату.",
                        style: AppTextStyles.h3.copyWith(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5,
                          height: 1.05,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsetsGeometry.symmetric(vertical: 18.px, horizontal: 24.px),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000.px),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Информация на сайте не является индивидуальной инвестиционной рекомендацией. Использование сервиса регулируется Пользовательским соглашением и Политикой конфиденциальности.",
                        style: AppTextStyles.p1.copyWith(
                          color: AppColors.arcticBlue,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 12.px),
                      Text(
                        "© Monetrix, 2025. Все права защищены",
                        style: AppTextStyles.p1.copyWith(
                          color: AppColors.arcticBlue,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
