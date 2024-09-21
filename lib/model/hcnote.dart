import 'package:hcocrnoteorder/model/hcnotehead_dynamic.dart';
import 'package:hcocrnoteorder/model/hcnotehead_static.dart';

class Invoice {
  final InvoiceInfo info;
  final HcnoteHeadStatic headingStatic;
  final HcnoteHeadDynamic headingDynamic;
  final List<InvoiceItem> items;

  const Invoice({
    required this.info,
    required this.headingStatic,
    required this.headingDynamic,
    required this.items,
  });
}

class InvoiceInfo {
  final String description;
  final String number;
  final DateTime date;
  final DateTime dueDate;

  const InvoiceInfo({
    required this.description,
    required this.number,
    required this.date,
    required this.dueDate,
  });
}

class InvoiceItem {
  final String description;
  final DateTime date;
  final int quantity;
  final double vat;
  final double unitPrice;

  const InvoiceItem({
    required this.description,
    required this.date,
    required this.quantity,
    required this.vat,
    required this.unitPrice,
  });
}
