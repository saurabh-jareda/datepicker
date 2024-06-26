part of datepickerx;

/// Thai (TH) Thai Land
class _StringsThTh extends _StringsI18n {
  const _StringsThTh();

  @override
  String getCancelText() {
    return 'ยกเลิก';
  }

  @override
  String getDoneText() {
    return 'ตกลง';
  }

  @override
  List<String> getMonths() {
    return [
      "มกราคม",
      "กุมภาพันธ์",
      "มีนาคม",
      "เมษายน",
      "พฤษภาคม",
      "มิถุนายน",
      "กรกฎาคม",
      "สิงหาคม",
      "กันยายน",
      "ตุลาคม",
      "พฤศจิกายน",
      "ธันวาคม"
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "จันทร์",
      "อังคาร",
      "พุธ",
      "พฤหัสบดี",
      "ศุกร์",
      "เสาร์",
      "อาทิตย์",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "จ.",
      "อ.",
      "พ.",
      "พฤ.",
      "ศ.",
      "ส.",
      "อา.",
    ];
  }
}
