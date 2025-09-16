import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension FileEx on File {
  Future<String> getSize({int decimals = 2}) async {
    final bytes = await length();
    if (bytes <= 0) return '0 B';
    const suffixes = [
      'B',
      'KB',
      'MB',
      'GB',
      'TB',
      'PB',
      'EB',
      'ZB',
      'YB',
    ];
    final i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  String get name {
    return path.split('/').last;
  }
}

extension StringEx on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  String get toShortFileName {
    if (length < 23) return this;
    final indexBeforeExt = length - 4;
    final firstPart = substring(0, 8);
    final secondPart = substring(
      indexBeforeExt - 8,
      indexBeforeExt,
    );
    final extension = split('.').last;
    return '$firstPart...$secondPart.$extension';
  }
}

extension ContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void hideKeyboard() {
    FocusScope.of(this).unfocus();
  }

  // void openUrl(Uri url) {
  //   showModalBottomSheet<void>(
  //     context: this,
  //     showDragHandle: true,
  //     backgroundColor: colorScheme.onPrimary,
  //     isScrollControlled: true,
  //     useRootNavigator: true,
  //     useSafeArea: true,
  //     builder: (context) {
  //       return UrlViewer(url: url);
  //     },
  //   );
  // }

  double getHeight([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.height * factor;
  }

  double getTop([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).padding.top * factor;
  }

  double getBottom([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).padding.bottom * factor;
  }

  double getWidth([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.width * factor;
  }

  double get height => getHeight();
  double get width => getWidth();

  // Future push(Widget page) {
  //   final route = PageRouter(child: page);
  //   return Navigator.of(this).push(route);
  // }

  // Future replace(Widget page) {
  //   final route = PageRouter(child: page);
  //   return Navigator.of(this).pushReplacement(route);
  // }

  // Future pushOff(Widget page) {
  //   final route = PageRouter(child: page);
  //   return Navigator.of(
  //     this,
  //   ).pushAndRemoveUntil(route, (_) => false);
  // }

  // Future popOff(
  //   BuildContext context, {
  //   int? initialPageIndex,
  // }) async {
  //   final screens = await locator<ScreenLoaderProvider>()
  //       .loadScreens();
  //   final route = PageRouter(
  //     child: AppScaffold(
  //       initialPageIndex: initialPageIndex ?? 0,
  //       screens: screens,
  //     ),
  //   );
  //   return Navigator.of(
  //     this,
  //   ).pushAndRemoveUntil(route, (_) => false);
  // }

  // Future<bool> pop<T>([T? result]) =>
  //     Navigator.maybePop(this, result);
}

extension TimeOfDayFormatter on TimeOfDay {
  String get formattedTime {
    final formattedMinute = minute < 10
        ? '0$minute'
        : minute.toString();
    final formattedHour = hour < 10
        ? '0$hour'
        : hour.toString();
    return '$formattedHour:$formattedMinute';
  }
}

extension DateTimeEx on DateTime {
  String get _suffix {
    var suffix = 'th';
    final digit = day % 10;
    if ((digit > 0 && digit < 4) &&
        (day < 11 || day > 13)) {
      suffix = ['st', 'nd', 'rd'][digit - 1];
    }

    return suffix;
  }

  bool get sessionStarted {
    final now = DateTime.now();
    final hourFromTime = add(const Duration(hours: 1));

    return isAfter(now) && isBefore(hourFromTime);
  }

  bool get sessionIsToday {
    final now = DateTime.now();

    return DateUtils.isSameDay(this, now);
  }

  String get toTime {
    return DateFormat('h:mm a').format(this);
  }

  String get toDayMonth {
    return DateFormat("d'$_suffix' MMMM").format(this);
  }

  String get toDayMonthYear {
    return DateFormat(
      "d'$_suffix' MMMM, yyyy",
    ).format(this);
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year &&
        month == now.month &&
        day == now.day;
  }

  bool get isMoreThan24HoursAgo {
    final now = DateTime.now();
    final difference = now.difference(this);
    return difference.inHours > 24;
  }

  String get chatDateTime {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(
      now.year,
      now.month,
      now.day - 1,
    );

    if (isAfter(today)) {
      // Today
      return DateFormat.jm().format(
        this,
      ); // Example: 5:08 PM
    } else if (isAfter(yesterday)) {
      // Yesterday
      return 'Yesterday';
    } else {
      // Older dates
      if (year != now.year) {
        // If the message is from a previous year,
        // include the year in the format
        return DateFormat(
          'MMM dd, yyyy',
        ).format(this); // Example: Nov 20, 2022
      } else {
        // Otherwise, show just the date without the year
        return DateFormat(
          'MMM dd',
        ).format(this); // Example: Nov 20
      }
    }
  }
}

extension WidgetExtension on Widget {
  Widget onTap(VoidCallback action, {bool opaque = true}) {
    return GestureDetector(
      behavior: opaque
          ? HitTestBehavior.opaque
          : HitTestBehavior.deferToChild,
      onTap: action,
      child: this,
    );
  }

  // Widget onPop(BuildContext context, {bool opaque = true}) {
  //   return GestureDetector(
  //     behavior: opaque
  //         ? HitTestBehavior.opaque
  //         : HitTestBehavior.deferToChild,
  //     onTap: () => context.pop(),
  //     child: this,
  //   );
  // }
}

extension StringExtension on double {
  String moneyFormat() {
    final f = NumberFormat.currency(symbol: "₦");
    return f.format(this);
  }
}

extension StringExtensions on String {
  String get png => "assets/images/$this.png";
  // String get svg => "assets/images/$this.svg";
  String get jpg => "assets/images/$this.jpg";
  String get jpeg => "assets/images/$this.jpeg";
  String get capitalize => length > 0
      ? '${this[0].toUpperCase()}${substring(1)}'
      : this;
  String get allInCaps => toUpperCase();
  String get alphabet => "abcdefghijklmnopqrstuvwxyz";
  String get pascalCase => replaceAll(
    RegExp(
      "(?=[${alphabet.toUpperCase()}])",
      multiLine: true,
    ),
    " ",
  ).titleCase;
  String get titleCase =>
      split(' ').map((str) => str.capitalize).join(' ');
  String get useFirstValue => split(" ").first;
  String get removeCommas => replaceAll(",", "");
  int get removeTheCommas =>
      int.parse(replaceAll(",", "")).toInt();
  // String get removeCurrencyPrefix =>
  //     replaceAll(AppStrings.currency, "");

  String get hideMidCharacters {
    if (length <= 6) return this;
    final splitAcc = split("");

    final prefix = splitAcc.take(3).join("");
    final suffix = splitAcc.reversed
        .take(3)
        .toList()
        .reversed
        .join("");

    int asterisksCount =
        splitAcc.length - (prefix.length + suffix.length);
    return "$prefix${"*" * asterisksCount}$suffix";
  }
}

extension DateTimeExtension on DateTime {
  String formatDate() {
    final f = DateFormat.yMMMd();
    return f.format(this);
  }
}

extension IntExtension on int {
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get milliseconds => Duration(
    microseconds:
        (this * Duration.microsecondsPerMillisecond)
            .toInt(),
  );
  int get inKobo => this * 100;
  int get inNaira => this ~/ 100;
}

// extension AppointmentStatusEx on AppointmentStatus {
//   bool get isValidAppointment {
//     return switch (this) {
//       AppointmentStatus.ongoing ||
//       AppointmentStatus.pending ||
//       AppointmentStatus.approved =>
//         true,
//       _ => false,
//     };
//   }
// }

extension MoneyEx on num {
  String toMoney() {
    return NumberFormat.simpleCurrency(
      decimalDigits: 0,
      name: '\u20A6',
    ).format(this);
  }
}
