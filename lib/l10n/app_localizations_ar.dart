// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get ourProducts => 'ﺎﻧﺗﺎﺟﺗﻧﻣ';

  @override
  String get hotOffers => 'ﺔﻧﺧﺎﺳﻟا';

  @override
  String get loginSuccessful => 'تم تسجيل الدخول ✅';

  @override
  String itemAdded(Object item) {
    return 'تم إضافة $item إلى العربة';
  }

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get signup => 'إنشاء حساب';
}
