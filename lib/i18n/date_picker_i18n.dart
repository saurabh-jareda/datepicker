part of datepickerx;

abstract class _StringsI18n {
  const _StringsI18n();

  /// Get the done widget text
  String getDoneText();

  /// Get the cancel widget text
  String getCancelText();

  /// Get the name of month
  List<String> getMonths();

  /// Get the full name of week
  List<String> getWeeksFull();

  /// Get the short name of week
  List<String>? getWeeksShort();
}

enum DateTimePickerLocale {
  /// English (EN) United States
  en_us,

  /// Chinese (ZH) Simplified
  zh_cn,

  /// Portuguese (PT) Brazil
  pt_br,

  /// Spanish (ES)
  es,

  /// Romanian (RO)
  ro,

  /// Bengali (BN)
  bn,

  /// Arabic (AR)
  ar,

  /// Japanese (JP)
  jp,

  /// Russian (RU)
  ru,

  /// German (DE)
  de,

  /// Korea (KO)
  ko,

  /// Italian (IT)
  it,

  /// Hindi (IN)
  hi,

  /// Hungarian (HU)
  hu,

  /// Hebrew (HE)
  he,

  /// Indonesian (ID)
  id,

  /// Turkish (TR)
  tr,

  /// Norwegian Bokmål (NO)
  no_nb,

  /// Norwegian Nynorsk (NO)
  no_nn,

  /// French (FR)
  fr,

  /// Thai (TH)
  th,

  /// Lithuaniana (LT)
  lt,

  /// Dutch (NL)
  nl,

  /// Haitian Creole (HT)
  ht,

  /// Swedish (SV)
  sv,

  /// Czech (CZ)
  cz,

  /// Polish (PL)
  pl,

  /// Serbian (SR)
  sr,
}

/// Default value of date locale
const DateTimePickerLocale DATETIME_PICKER_LOCALE_DEFAULT =
    DateTimePickerLocale.en_us;

const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n = {
  DateTimePickerLocale.en_us: _StringsEnUs(),
  DateTimePickerLocale.zh_cn: _StringsZhCn(),
  DateTimePickerLocale.pt_br: _StringsPtBr(),
  DateTimePickerLocale.es: _StringsEs(),
  DateTimePickerLocale.ro: _StringsRo(),
  DateTimePickerLocale.bn: _StringsBn(),
  DateTimePickerLocale.ar: _StringsAr(),
  DateTimePickerLocale.jp: _StringsJp(),
  DateTimePickerLocale.ru: _StringsRu(),
  DateTimePickerLocale.de: _StringsDe(),
  DateTimePickerLocale.ko: _StringsKo(),
  DateTimePickerLocale.it: _StringsIt(),
  DateTimePickerLocale.hu: _StringsHu(),
  DateTimePickerLocale.hi: _StringsHi(),
  DateTimePickerLocale.he: _StringsHe(),
  DateTimePickerLocale.id: _StringsId(),
  DateTimePickerLocale.tr: _StringsTr(),
  DateTimePickerLocale.no_nb: _StringsNoNb(),
  DateTimePickerLocale.no_nn: _StringsNoNn(),
  DateTimePickerLocale.nl: _StringsNl(),
  DateTimePickerLocale.fr: _StringsFr(),
  DateTimePickerLocale.th: _StringsTh(),
  DateTimePickerLocale.lt: _StringsLt(),
  DateTimePickerLocale.ht: _StringsHt(),
  DateTimePickerLocale.sv: _StringsSv(),
  DateTimePickerLocale.cz: _StringsCz(),
  DateTimePickerLocale.pl: _StringsPl(),
  DateTimePickerLocale.sr: _StringsSr(),
};

class DatePickerI18n {
  /// Get done button text
  static String getLocaleDone(DateTimePickerLocale locale) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getDoneText();
  }

  /// Get cancel button text
  static String getLocaleCancel(DateTimePickerLocale locale) {
    _StringsI18n i18n = datePickerI18n[locale] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    return i18n.getCancelText();
  }

  /// Get locale month array
  static List<String> getLocaleMonths(DateTimePickerLocale? locale) {
    _StringsI18n i18n = datePickerI18n[locale!] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!;
    List<String> months = i18n.getMonths();
    if (months.isNotEmpty) {
      return months;
    }
    return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getMonths();
  }

  /// Get locale week array
  static List<String>? getLocaleWeeks(DateTimePickerLocale? locale,
      [bool isFull = true]) {
    _StringsI18n? i18n = datePickerI18n[locale!] ??
        datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT];
    if (isFull) {
      List<String> weeks = i18n!.getWeeksFull();
      if (weeks.isNotEmpty) {
        return weeks;
      }
      return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getWeeksFull();
    }

    List<String>? weeks = i18n!.getWeeksShort();
    if (weeks != null && weeks.isNotEmpty) {
      return weeks;
    }

    List<String> fullWeeks = i18n.getWeeksFull();
    if (fullWeeks.isNotEmpty) {
      return fullWeeks
          .map((item) => item.substring(0, min(3, item.length)))
          .toList();
    }
    return datePickerI18n[DATETIME_PICKER_LOCALE_DEFAULT]!.getWeeksShort();
  }
}
