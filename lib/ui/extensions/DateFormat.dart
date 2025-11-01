import 'package:intl/intl.dart';

extension StringToDate on String {
  String formatNewsDate() {
    DateFormat inputFormat = DateFormat("yyyy-MM-dd'T'hh:mm:ss");
    DateTime dateTime = inputFormat.parse(this);
    DateFormat outputFormat = DateFormat("EEE, MMM d,yyyy");
    return outputFormat.format(dateTime);
  }
}
