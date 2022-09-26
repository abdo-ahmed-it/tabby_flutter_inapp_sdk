import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tabby_flutter/pages/chechout_page.dart';
import 'package:tabby_flutter/pages/home_page.dart';
import 'package:tabby_flutter_sdk/tabby_flutter_sdk.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  TabbySDK().setup(
    withApiKey: '', // Put here your Api key
    environment: Environment.stage, // Or use Environment.production
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabby Flutter SDK Demo',
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      locale: const Locale('ar', ''), // Use it for check Arabic locale
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/checkout': (context) => const CheckoutPage(),
      },
    );
  }
}
