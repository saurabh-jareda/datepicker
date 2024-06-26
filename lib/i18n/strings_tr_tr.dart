part of datepickerx;

/// Turkish (TR)
class _StringsTrTr extends _StringsI18n {
  const _StringsTrTr();

  @override
  String getCancelText() {
    return 'İptal';
  }

  @override
  String getDoneText() {
    return 'Tamam';
  }

  @override
  List<String> getMonths() {
    return [
      "Ocak",
      "Şubat",
      "Mart",
      "Nisan",
      "Mayıs",
      "Haziran",
      "Temmuz",
      "Ağustos",
      "Eylül",
      "Ekim",
      "Kasım",
      "Aralık"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Pazartesi",
      "Salı",
      "Çarşamba",
      "Perşembe",
      "Cuma",
      "Cumartesi",
      "Pazar",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "Pzt",
      "Sal",
      "Çar",
      "Per",
      "Cum",
      "Cmt",
      "Paz",
    ];
  }
}
