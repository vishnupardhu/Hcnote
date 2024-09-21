// import 'package:flutter/material.dart';

// import 'package:field_suggestion/field_suggestion.dart';
// import 'package:pdf/pdf.dart';
// import 'package:printing/printing.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:shared_preferences/shared_preferences.dart';

// class ScanTypeOrder extends StatefulWidget {
//   // const ScanTypeOrder({super.key});

//   @override
//   State<ScanTypeOrder> createState() => _ScanTypeOrderState();
// }

// class _ScanTypeOrderState extends State<ScanTypeOrder> {
//   final TextEditingController _caseNoController = TextEditingController();
//   final TextEditingController _caseOrderController = TextEditingController();
//   final boxControllerOrder = BoxController();
//   final TextEditingController _caseYearController = TextEditingController();

//   final TextEditingController _caseSignTypeController = TextEditingController();
//   final TextEditingController _caseCmshortController = TextEditingController();
//   String? _selectedOrder;
//   DateTime _selectedDate = DateTime.now();
//   List<String> _orders = ["Learned Counsel", "Learned Counsel for the"];

//   @override
//   void initState() {
//     super.initState();
//     _loadOrders();
//   }

//   void _loadOrders() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _orders = prefs.getStringList('orders') ?? [];
//     });
//   }

//   void _saveOrder(String order) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     _orders.add(order);
//     prefs.setStringList('orders', _orders);
//   }

//   Future<List<String>> future(String input) => Future<List<String>>.delayed(
//         const Duration(seconds: 1),
//         () => _orders
//             .where((s) => s.toLowerCase().contains(input.toLowerCase()))
//             .toList(),
//       );
//   List<String> getFilteredStateList(String query) {
//     List<String> matches = [];
//     matches.addAll(_orders);
//     matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
//     return matches;
//   }

//   void _generatePDF() async {
//     final pdf = pw.Document();

// static Widget buildSupplierAddress(Supplier supplier) => Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(supplier.title,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Text(supplier.caseno,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
//               SizedBox(width: 5),
//               Text(supplier.caseno,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
//             ],
//           ),
//         ],
//       );
//       pdf.addPage(
//     pw.Page(
//       build: (pw.Context context) {
//         return pw.Column(
//           mainAxisAlignment: pw.MainAxisAlignment.center,
//              crossAxisAlignment: pw.CrossAxisAlignment.center,
//           children: [
//             pw.Column(
//                mainAxisAlignment: pw.MainAxisAlignment.center,
//              crossAxisAlignment: pw.CrossAxisAlignment.center,
//               children: [
//  pw.Text("HIGH COURT FOR THE STATE OF TELANGANA",
//               style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 15)),
//           pw.SizedBox(height: 10),
//           pw.Row(
//              mainAxisAlignment: pw.MainAxisAlignment.center,
//              crossAxisAlignment: pw.CrossAxisAlignment.center,
//             children: [
//               pw.Text("MAIN CASE NO: ",
//                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14)),
//               pw.SizedBox(width: 5),
//               pw.Text('1234' + ' of ',
//                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14)),
//                    pw.SizedBox(width: 5),
//               pw.Text('2014' ,
//                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14)),
                  
//             ],
//           ),
//            pw.SizedBox(height: 10),
//               pw.Text("PROCEEDING SHEET",
//                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14)),

//             ]),
//             // pw.Container(
//             //   alignment: pw.Alignment.center,
//             //   padding: const pw.EdgeInsets.all(10),
//             //   child: pw.Text(
//             //     'Shopping Site Invoice',
//             //     style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
//             //   ),
//             // ),
//             pw.SizedBox(height: 10),
//             // Table
//             pw.Table(
//               border: pw.TableBorder.all(),
//               children: [
//                 // Header row
//                 pw.TableRow(
//                   children: [
//                     _buildHeaderCell('S.NO'),
//                     _buildHeaderCell('DATE'),
//                     _buildHeaderCell('ORDER'),
//                     _buildHeaderCell('OFFICE NOTE'),
//                   ],
//                 ),
//                 // Sample data row
//                 pw.TableRow(
//                   children: [
//                     _buildCell('1', 10),
//                     _buildCell('2024-09-21', 30),
//                     _buildCell('Order #12345', 100),
//                     _buildCell('Sample note', 20),
//                   ],
//                 ),
//                  pw.TableRow(
//                   children: [
//                     _buildCell('', 10),
//                     _buildCell('', 30),
//                     _buildCellEndBold('EVVJ', 100),
//                     _buildCell('', 20),
//                   ],
//                 ),
//                  pw.TableRow(
//                   children: [
//                     _buildCell('', 10),
//                     _buildCell('', 30),
//                     _buildCellEnd('psk', 100),
//                     _buildCell('', 20),
//                   ],
//                 ),
//                 // Add more rows as needed...
//               ],
//             ),
//           ],
//         );
//       },
//     ),
//   );

//     pdf.addPage(pw.Page(
//       build: (pw.Context context) {
//         return pw.Table(
//           border: pw.TableBorder.all(),
//           children: [
//             pw.TableRow(
//               children: [
//                 pw.Padding(
//                     padding: const pw.EdgeInsets.all(8.0),
//                     child: pw.Column(
//                         mainAxisAlignment: pw.MainAxisAlignment.center,
//                         children: [
//                           pw.Center(
//                             child: pw.Text(
//                                 'HIGH COURT FOR THE STATE OF TELANGANA',
//                                 style: pw.TextStyle(fontSize: 24)),
//                           ),
//                           pw.Center(
//                             child: pw.Row(
//                                 //crossAxisAlignment:CrossAxisAlignment.center,
//                                 children: [
//                                   pw.Text('MAIN CASE NO: ',
//                                       style: pw.TextStyle(
//                                         fontSize: 22,
//                                       )),
//                                   pw.Text('MAIN CASE NO: ',
//                                       style: pw.TextStyle(
//                                         fontSize: 22,
//                                       )),
//                                 ]),
//                           ),
//                           pw.Center(
//                             child: pw.Text(
//                                 'HIGH COURT FOR THE STATE OF TELANGANA',
//                                 style: pw.TextStyle(fontSize: 22)),
//                           ),

//                           // pw.Text('HIGH COURT FOR THE STATE OF TELANGANA',
//                           //     style: pw.TextStyle(fontSize: 24)),
//                           // pw.Text('HC', style: pw.TextStyle(fontSize: 24)),
//                         ])),
//               ],
//             ),
//             pw.TableRow(children: [
//               pw.Text('S.NO', style: pw.TextStyle(fontSize: 22)),
//               pw.Text('DATE', style: pw.TextStyle(fontSize: 22)),
//               pw.Text('ORDER', style: pw.TextStyle(fontSize: 22)),
//               pw.Text('OFFICE NOTE', style: pw.TextStyle(fontSize: 22)),
//             ]),
//             pw.TableRow(children: [
//               pw.Text('1', style: pw.TextStyle(fontSize: 20)),
//               pw.Text('${_selectedDate.toLocal()}'.split(' ')[0],
//                   style: pw.TextStyle(fontSize: 20)),
//               pw.Text(_selectedOrder ?? ''),
//               pw.Text('Transferred to I/O folder before correction',
//                   style: pw.TextStyle(fontSize: 20)),
//             ]),
//             pw.TableRow(children: [
//               pw.Text(''),
//               pw.Text(''),
//               pw.Text(_selectedOrder ?? ''),
//               pw.Text(''),
//             ]),
//             pw.TableRow(children: [
//               pw.Text(''),
//               pw.Text(''),
//               pw.Text(_selectedOrder ?? ''),
//               pw.Text(''),
//             ]),
//           ],
//         );
//       },
//     ));

//     await Printing.layoutPdf(
//         onLayout: (PdfPageFormat format) async => pdf.save());
//   }


//   pw.Widget _buildHeaderCell(String text) {
//   return pw.Container(
//     padding: const pw.EdgeInsets.all(8),
//     color: PdfColors.grey300,
//     child: pw.Text(
//       text,
//       style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
//       textAlign: pw.TextAlign.center,
//     ),
//   );
// }

// pw.Widget _buildCell(String text, double width) {
//   return pw.Container(
//     width: width,
//     padding: const pw.EdgeInsets.all(8),
//     child: pw.Text(
//       text,
//       //textAlign: pw.TextAlign.center,
//       style: pw.TextStyle( fontSize: 12),
//     ),
//   );
// }
// pw.Widget _buildCellEndBold(String text, double width) {
//   return pw.Container(
//     width: width,
//     padding: const pw.EdgeInsets.all(8),
//     child: pw.Text(
//       text,
//       textAlign: pw.TextAlign.end,
//       style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
//     ),
//   );
// }
// pw.Widget _buildCellEnd(String text, double width) {
//   return pw.Container(
//     width: width,
//     padding: const pw.EdgeInsets.all(8),
//     child: pw.Text(
//       text,
//       textAlign: pw.TextAlign.end,
//       style: pw.TextStyle( fontSize: 12),
//     ),
//   );
// }

//   List suggestionList = [];
//   String hint = "";
//   void typeAheadFilter(String value) {
//     suggestionList.clear();

//     if (value.isEmpty) {
//       setState(() {});
//       return;
//     }

//     for (String name in _orders) {
//       if (name.toLowerCase().contains(value)) {
//         suggestionList.add(name);
//       }
//     }

//     if (suggestionList.isNotEmpty) {
//       var firstSuggestion = suggestionList[0];

//       setState(() => hint = firstSuggestion);
//     }

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Invoice Form')),
//       body: Padding(
//         padding: const EdgeInsets.all(2.0),
//         child: Column(
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 1),
//               child: TextFormField(
//                 controller: _caseNoController,
//                 decoration: InputDecoration(
//                     hintText: hint,
//                     labelText: hint.isEmpty ? "Type Case Type" : hint,
//                     alignLabelWithHint: true,
//                     hintTextDirection: TextDirection.rtl),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 2, right: 2, top: 2, bottom: 1),
//                     child: TextFormField(
//                       controller: _caseNoController,
//                       decoration: InputDecoration(
//                           hintText: hint,
//                           labelText: hint.isEmpty ? "Case No." : hint,
//                           alignLabelWithHint: true,
//                           hintTextDirection: TextDirection.rtl),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 2, right: 2, top: 2, bottom: 1),
//                     child: TextFormField(
//                       controller: _caseYearController,
//                       decoration: InputDecoration(
//                           hintText: hint,
//                           labelText: hint.isEmpty ? "Case Year" : hint,
//                           alignLabelWithHint: true,
//                           hintTextDirection: TextDirection.rtl),
//                       keyboardType: TextInputType.number,
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             // // Autocomplete<String>(
//             //   options: _orders,
//             //   onSelected: (value) {
//             //     setState(() {
//             //       _selectedOrder = value;
//             //     });
//             //   },
//             //   fieldViewBuilder: (context, textEditingController, focusNode,
//             //       onFieldSubmitted) {
//             //     return TextFormField(
//             //       controller: textEditingController,
//             //       focusNode: focusNode,
//             //       decoration: InputDecoration(labelText: 'Order'),
//             //       onSaved: (value) {
//             //         _saveOrder(value!); // Save new order
//             //       },
//             //     );
//             //   },
//             // ),
//             TextFormField(
//               controller: _caseOrderController,
//               onFieldSubmitted: (value) {
//                 setState(() {
//                   _selectedOrder = value;
//                 });
//               },
//               onChanged: (value) => typeAheadFilter(value),
//               maxLines: 6,
//               decoration: InputDecoration(
//                   hintText: hint,
//                   labelText: hint.isEmpty ? "Type Order" : hint,
//                   alignLabelWithHint: true,
//                   hintTextDirection: TextDirection.rtl),
//             ),
//             const SizedBox(height: 10),
//             if (suggestionList.isNotEmpty ||
//                 _caseOrderController.text.isNotEmpty) ...[
//               Expanded(
//                 child: ListView.separated(
//                   padding: const EdgeInsets.all(10),
//                   shrinkWrap: true,
//                   itemCount: suggestionList.length,
//                   separatorBuilder: (context, index) => const Divider(),
//                   itemBuilder: (context, index) {
//                     return Text((suggestionList[index]));
//                   },
//                 ),
//               )
//             ] else ...[
//               Expanded(
//                 child: ListView.separated(
//                   padding: const EdgeInsets.all(10),
//                   shrinkWrap: true,
//                   itemCount: _orders.length,
//                   separatorBuilder: (context, index) => const Divider(),
//                   itemBuilder: (context, index) {
//                     return Text((_orders[index]));
//                   },
//                 ),
//               ),
//             ],

//             SizedBox(height: 16),
//             Text("Date: ${_selectedDate.toLocal()}".split(' ')[0]),
//             ElevatedButton(
//               onPressed: () {
//                 showDatePicker(
//                   context: context,
//                   initialDate: _selectedDate,
//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2101),
//                 ).then((date) {
//                   if (date != null && date != _selectedDate) {
//                     setState(() {
//                       _selectedDate = date;
//                     });
//                   }
//                 });
//               },
//               child: Text('Select Date'),
//             ),
//             FieldSuggestion<String>.network(
//               future: (input) => future.call(input),
//               boxController: boxControllerOrder,
//               textController: _caseOrderController,
//               inputDecoration: InputDecoration(
//                 hintText: 'Type order', // optional
//               ),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState != ConnectionState.done) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 final result = snapshot.data ?? [];
//                 return ListView.builder(
//                   itemCount: result.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(
//                           () => _caseOrderController.text = result[index],
//                         );

//                         _caseOrderController.selection =
//                             TextSelection.fromPosition(
//                           TextPosition(
//                               offset: _caseOrderController.text.length),
//                         );

//                         boxControllerOrder.close?.call();
//                       },
//                       child: Card(
//                         child: ListTile(title: Text(result[index])),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),

//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //   children: [
//             //     Padding(
//             //       padding: const EdgeInsets.only(
//             //           left: 2, right: 2, top: 2, bottom: 1),
//             //       child: TextFormField(
//             //         controller: _caseSignTypeController,
//             //         decoration: InputDecoration(
//             //             hintText: hint,
//             //             labelText: hint.isEmpty ? "Sign Type" : hint,
//             //             alignLabelWithHint: true,
//             //             hintTextDirection: TextDirection.rtl),
//             //       ),
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.only(
//             //           left: 2, right: 2, top: 2, bottom: 1),
//             //       child: TextFormField(
//             //         controller: _caseCmshortController,
//             //         decoration: InputDecoration(
//             //             hintText: hint,
//             //             labelText: hint.isEmpty ? "CM Shortcut" : hint,
//             //             alignLabelWithHint: true,
//             //             hintTextDirection: TextDirection.rtl),
//             //         keyboardType: TextInputType.number,
//             //       ),
//             //     ),
//             //   ],
//             // ),

//             // TypeAheadField<_orders>(
//             //   suggestionsCallback: (search) =>
//             //       CityService.of(context).find(search),
//             //   builder: (context, controller, focusNode) {
//             //     return TextField(
//             //         controller: controller,
//             //         focusNode: focusNode,
//             //         autofocus: true,
//             //         decoration: InputDecoration(
//             //           border: OutlineInputBorder(),
//             //           labelText: 'City',
//             //         ));
//             //   },
//             //   itemBuilder: (context, city) {
//             //     return ListTile(
//             //       title: Text(city.name),
//             //       //subtitle: Text(city.country),
//             //     );
//             //   },
//             //   onSelected: (city) {
//             //     // Navigator.of(context).push<void>(
//             //     //   MaterialPageRoute(
//             //     //     builder: (context) => CityPage(city: city),
//             //     //   ),
//             //     // );
//             //   },
//             // ),
//             Spacer(),
//             ElevatedButton(
//               onPressed: _generatePDF,
//               child: Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget _autoSearchField() {
//   //   return TypeAheadField(
//   //     onSelected: (value) {
//   //       setState(() {
//   //         _selectedOrder = value;
//   //       });
//   //     },

//   //     // onSuggestionSelected: (String suggestion) {
//   //     //   /// on click of list item
//   //     //   print("-----clicked state $suggestion-------");

//   //     //   setState(() {
//   //     //     stateController.text = suggestion;
//   //     //     state = suggestion;
//   //     //   });
//   //     // },
//   //     itemBuilder: (context, String suggestion) {
//   //       ///list item builder
//   //       return SizedBox(
//   //           height: 40,
//   //           child: Align(
//   //               alignment: Alignment.centerLeft, child: Text(suggestion)));
//   //     },
//   //     suggestionsCallback: (value) {
//   //       /// returning filtered list
//   //       return getFilteredStateList(value);
//   //     },
//   //     decorationBuilder:  const decorationBuilder(
//   //         color: Colors.white,
//   //         elevation: 4.0,
//   //         borderRadius: BorderRadius.only(
//   //           bottomLeft: Radius.circular(10),
//   //           bottomRight: Radius.circular(10),
//   //         )),

//   //     textFieldConfiguration: TextFieldConfiguration(
//   //         controller: stateController,
//   //         decoration: InputDecoration(
//   //             hintText: "Enter State Name",
//   //             focusedBorder: OutlineInputBorder(
//   //               borderRadius: const BorderRadius.all(Radius.circular(4)),
//   //               borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
//   //             ),
//   //             disabledBorder: OutlineInputBorder(
//   //               borderRadius: const BorderRadius.all(Radius.circular(4)),
//   //               borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
//   //             ),
//   //             enabledBorder: OutlineInputBorder(
//   //               borderRadius: const BorderRadius.all(Radius.circular(4)),
//   //               borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
//   //             ),
//   //             border: const OutlineInputBorder(
//   //                 borderRadius: BorderRadius.all(Radius.circular(4)),
//   //                 borderSide: BorderSide(
//   //                   width: 1,
//   //                 )),
//   //             errorBorder: OutlineInputBorder(
//   //                 borderRadius: const BorderRadius.all(Radius.circular(4)),
//   //                 borderSide:
//   //                     BorderSide(width: 1, color: Colors.grey.shade200)),
//   //             focusedErrorBorder: OutlineInputBorder(
//   //                 borderRadius: const BorderRadius.all(Radius.circular(4)),
//   //                 borderSide:
//   //                     BorderSide(width: 1, color: Colors.grey.shade200)))),
//   //   );
//   // }
// }
