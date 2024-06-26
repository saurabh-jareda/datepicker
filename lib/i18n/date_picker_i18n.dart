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

  /// Spanish (ES) Spain
  es_es,

  /// Romanian (RO) Romania
  ro_ro,

  /// Bengali (BN) Bangladesh
  bn_bd,

  /// Arabic (AR) Saudi Arabia
  ar_sa,

  /// Japanese (JA) Japan
  ja_jp,

  /// Russian (RU) Russia
  ru_ru,

  /// German (DE) Germany
  de_de,

  /// Korean (KO) South Korea
  ko_kr,

  /// Italian (IT) Italy
  it_it,

  /// Hindi (HI) India
  hi_in,

  /// Hungarian (HU) Hungary
  hu_hu,

  /// Hebrew (HE) Israel
  he_il,

  /// Indonesian (ID) Indonesia
  id_id,

  /// Turkish (TR) Turkey
  tr_tr,

  /// Norwegian Bokmål (NO) Norway
  no_nb,

  /// Norwegian Nynorsk (NO) Norway
  no_nn,

  /// French (FR) France
  fr_fr,

  /// Thai (TH) Thailand
  th_th,

  /// Lithuanian (LT) Lithuania
  lt_lt,

  /// Dutch (NL) Netherlands
  nl_nl,

  /// Haitian Creole (HT) Haiti
  ht_ht,

  /// Swedish (SV) Sweden
  sv_se,

  /// Czech (CZ) Czech Republic
  cs_cz,

  /// Polish (PL) Poland
  pl_pl,

  /// Serbian (SR) Serbia
  sr_rs,
}

/// Default value of date locale
const DateTimePickerLocale DATETIME_PICKER_LOCALE_DEFAULT =
    DateTimePickerLocale.en_us;

const Map<DateTimePickerLocale, _StringsI18n> datePickerI18n = {
  DateTimePickerLocale.en_us: _StringsEnUs(),
  DateTimePickerLocale.zh_cn: _StringsZhCn(),
  DateTimePickerLocale.pt_br: _StringsPtBr(),
  DateTimePickerLocale.es_es: _StringsEsEs(),
  DateTimePickerLocale.ro_ro: _StringsRoRo(),
  DateTimePickerLocale.bn_bd: _StringsBnBd(),
  DateTimePickerLocale.ar_sa: _StringsArSa(),
  DateTimePickerLocale.ja_jp: _StringsJaJp(),
  DateTimePickerLocale.ru_ru: _StringsRuRu(),
  DateTimePickerLocale.de_de: _StringsDeDe(),
  DateTimePickerLocale.ko_kr: _StringsKoKr(),
  DateTimePickerLocale.it_it: _StringsItIt(),
  DateTimePickerLocale.hi_in: _StringsHiIn(),
  DateTimePickerLocale.hu_hu: _StringsHuHu(),
  DateTimePickerLocale.he_il: _StringsHeIl(),
  DateTimePickerLocale.id_id: _StringsIdId(),
  DateTimePickerLocale.tr_tr: _StringsTrTr(),
  DateTimePickerLocale.no_nb: _StringsNoNb(),
  DateTimePickerLocale.no_nn: _StringsNoNn(),
  DateTimePickerLocale.nl_nl: _StringsNlNl(),
  DateTimePickerLocale.fr_fr: _StringsFrFr(),
  DateTimePickerLocale.th_th: _StringsThTh(),
  DateTimePickerLocale.lt_lt: _StringsLtLt(),
  DateTimePickerLocale.ht_ht: _StringsHtHt(),
  DateTimePickerLocale.sv_se: _StringsSvSe(),
  DateTimePickerLocale.cs_cz: _StringsCsCz(),
  DateTimePickerLocale.pl_pl: _StringsPlPl(),
  DateTimePickerLocale.sr_rs: _StringsSrRs(),
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
