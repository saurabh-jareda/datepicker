part of datepickerx;

enum DateTimePickerMode {
  /// Display DatePicker
  date,

  /// Display DateTimePicker
  datetime,
}

class DatePicker {
  /// Gets the right [DateTimePickerLocale] by a language string
  ///
  /// languageCode: [languageCode] Locale's String language code
  static DateTimePickerLocale localeFromString(String languageCode) {
    switch (languageCode) {
      case 'zh':
        return DateTimePickerLocale.zh_cn;
      case 'pt':
        return DateTimePickerLocale.pt_br;
      case 'es':
        return DateTimePickerLocale.es_es;
      case 'ro':
        return DateTimePickerLocale.ro_ro;
      case 'bn':
        return DateTimePickerLocale.bn_bd;
      case 'ar':
        return DateTimePickerLocale.ar_sa;
      case 'jp':
        return DateTimePickerLocale.ja_jp;
      case 'ru':
        return DateTimePickerLocale.ru_ru;
      case 'de':
        return DateTimePickerLocale.de_de;
      case 'ko':
        return DateTimePickerLocale.ko_kr;
      case 'it':
        return DateTimePickerLocale.it_it;
      case 'hu':
        return DateTimePickerLocale.hu_hu;
      case 'he':
        return DateTimePickerLocale.he_il;
      case 'id':
        return DateTimePickerLocale.id_id;
      case 'tr':
        return DateTimePickerLocale.tr_tr;
      case 'nb':
        return DateTimePickerLocale.no_nb;
      case 'nn':
        return DateTimePickerLocale.no_nn;
      case 'fr':
        return DateTimePickerLocale.fr_fr;
      case 'th':
        return DateTimePickerLocale.th_th;
      case 'nl':
        return DateTimePickerLocale.nl_nl;
      case 'ht':
        return DateTimePickerLocale.ht_ht;
      case 'sv':
        return DateTimePickerLocale.sv_se;
      case 'cz':
        return DateTimePickerLocale.cs_cz;
      case 'pl':
        return DateTimePickerLocale.pl_pl;
      default:
        return DateTimePickerLocale.en_us;
    }
  }

  /// Display date picker in bottom sheet.
  ///
  /// context: [BuildContext]
  /// firstDate: [DateTime] minimum date time
  /// lastDate: [DateTime] maximum date time
  /// initialDateTime: [DateTime] initial date time for selected
  /// dateFormat: [String] date format pattern
  /// locale: [DateTimePickerLocale] internationalization
  /// backgroundColor: [Color] background color of the dialog
  /// itemTextStyle: [TextStyle] item TextStyle of the picker
  /// titleText: [String] text of the dialog's title
  /// confirmText: [String] text of the dialog's confirm button
  /// cancelText: [String] text of the dialog's  cancel button
  static Future<DateTime?> showSimpleDatePicker(
    BuildContext context, {
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? initialDate,
    String? dateFormat,
    DateTimePickerLocale locale = DATETIME_PICKER_LOCALE_DEFAULT,
    DateTimePickerMode pickerMode = DateTimePickerMode.date,
    Color? backgroundColor,
    Color? titleColor,
    Color? itemColor,
    TextStyle? itemTextStyle,
    String? titleText,
    String? confirmText,
    String? cancelText,
    bool looping = false,
    bool reverse = false,
  }) {
    DateTime? selectedDate = initialDate ?? DateTime.now().startOfDay();

    // handle the range of datetime
    firstDate ??= DateTime.parse(DATE_PICKER_MIN_DATETIME);
    lastDate ??= DateTime.parse(DATE_PICKER_MAX_DATETIME);

    // handle initial DateTime
    initialDate ??= DateTime.now();

    // handle background color
    Color backgroundColorx =
        backgroundColor ?? ColorUtils.getDatetimePickerBackgroundColor(context);

    titleColor ??= Theme.of(context).colorScheme.onSurface;
    itemColor ??= Theme.of(context).colorScheme.primary;

    // handle item text style
    TextStyle itemTextStylex =
        itemTextStyle ?? TextStyle(color: itemColor, fontSize: 16);

    return showModalBottomSheet<DateTime>(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      // showDragHandle: true,
      //backgroundColor: backgroundColor,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (titleText != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    titleText,
                    style: TextStyle(color: titleColor, fontSize: 24.0),
                  ),
                ),
              DatePickerWidget(
                firstDate: firstDate,
                lastDate: lastDate,
                initialDate: initialDate,
                dateFormat: dateFormat,
                locale: locale,
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: backgroundColorx,
                  itemTextStyle: itemTextStylex,
                ),
                onChange: ((DateTime date, list) {
                  print("You selected date: $date");
                  selectedDate = date;
                }),
                looping: looping,
              ),
              // bottom row of "OK" and "Cancel" buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 45,
                    child: FilledButtonPro(
                      index: 2,
                      onPressedAction: () => Navigator.pop(context),
                      locale: locale,
                    ),
                  ),
                  const Expanded(flex: 5, child: SizedBox()),
                  Expanded(
                    flex: 45,
                    child: Builder(
                        builder: (context) => FilledButtonPro(
                              index: 1,
                              onPressedAction: () =>
                                  Navigator.pop(context, selectedDate),
                              locale: locale,
                            )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
