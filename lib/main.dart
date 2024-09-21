import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hcocrnoteorder/screens/homescreen.dart';
//import 'package:hcocrnoteorder/scantest.dart';
import 'package:hcocrnoteorder/screens/scan_type_order.dart';
//import 'package:generate_pdf_invoice_example/page/pdf_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Invoice';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme:
            ThemeData(primarySwatch: Colors.deepOrange, fontFamily: 'Bookman'),
        //home: PdfPage(),
        // home: ScanTest(),
        home: HomeScreenHc(),
      );
}
