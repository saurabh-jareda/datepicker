part of datepickerx;

/// Hindi (HI) India
class _StringsHiIn extends _StringsI18n {
  const _StringsHiIn();

  @override
  String getCancelText() {
    return 'रद्द करें';
  }

  @override
  String getDoneText() {
    return 'संपन्न';
  }

  @override
  List<String> getMonths() {
    return [
      "जनवरी",
      "फरवरी",
      "मार्च",
      "अप्रैल",
      "मई",
      "जून",
      "जुलाई",
      "अगस्त",
      "सितंबर",
      "अक्टूबर",
      "नवंबर",
      "दिसंबर"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "सोमवार",
      "मंगलवार",
      "बुधवार",
      "गुरुवार",
      "शुक्रवार",
      "शनिवार",
      "रविवार",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "सोम",
      "मंगल",
      "बुध",
      "गुरु",
      "शुक्र",
      "शनि",
      "रवि",
    ];
  }
}
