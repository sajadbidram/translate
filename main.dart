// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_translate/google_translate.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Translate',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale('en', 'US'),
//         const Locale('fr', 'FR'),
//       ],
//       home: TranslateScreen(),
//     );
//   }
// }
//
// class TranslateScreen extends StatefulWidget {
//   @override
//   _TranslateScreenState createState() => _TranslateScreenState();
// }
//
// class _TranslateScreenState extends State<TranslateScreen> {
//   final GoogleTranslate translate = GoogleTranslate();
//
//   TextEditingController inputController = TextEditingController();
//   TextEditingController outputController = TextEditingController();
//
//   void translateText() async {
//     String translatedText = await translate.translate(
//       inputController.text,
//       sourceLanguage: 'en',
//       targetLanguage: 'fr',
//     );
//     outputController.text = translatedText;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Translate'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextField(
//               controller: inputController,
//               decoration: InputDecoration(labelText: 'Enter text'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextField(
//               controller: outputController,
//               decoration: InputDecoration(labelText: 'Translated text'),
//               readOnly: true,
//             ),
//           ),
//           ElevatedButton(
//             onPressed: translateText,
//             child: Text('Translate'),
//           ),
//         ],
//       ),
//     );
//   }
// }import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_translate/google_translate.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Translate',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale('en', 'US'),
//         const Locale('fr', 'FR'),
//       ],
//       home: TranslateScreen(),
//     );
//   }
// }
//
// class TranslateScreen extends StatefulWidget {
//   @override
//   _TranslateScreenState createState() => _TranslateScreenState();
// }
//
// class _TranslateScreenState extends State<TranslateScreen> {
//   final GoogleTranslate translate = GoogleTranslate();
//
//   TextEditingController inputController = TextEditingController();
//   TextEditingController outputController = TextEditingController();
//
//   void translateText() async {
//     String translatedText = await translate.translate(
//       inputController.text,
//       sourceLanguage: 'en',
//       targetLanguage: 'fr',
//     );
//     outputController.text = translatedText;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Translate'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextField(
//               controller: inputController,
//               decoration: InputDecoration(labelText: 'Enter text'),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: TextField(
//               controller: outputController,
//               decoration: InputDecoration(labelText: 'Translated text'),
//               readOnly: true,
//             ),
//           ),
//           ElevatedButton(
//             onPressed: translateText,
//             child: Text('Translate'),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_translate/google_translate.dart';

void main() {
  GoogleTranslate.initialize(
    apiKey: 'your_api_key',
    sourceLanguage: 'en',
    targetLanguage: 'fr',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translate',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('fr', 'FR'),
      ],
      home: TranslateScreen(),
    );
  }
}

class TranslateScreen extends StatefulWidget {
  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  final GoogleTranslate translate = GoogleTranslate();

  TextEditingController inputController = TextEditingController();
  TextEditingController outputController = TextEditingController();

  void translateText() async {
    String translatedText = await translate.translate(
      inputController.text,
      sourceLanguage: 'en',
      targetLanguage: 'fr',
    );
    outputController.text = translatedText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: inputController,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: outputController,
              decoration: InputDecoration(labelText: 'Translated text'),
              readOnly: true,
            ),
          ),
          ElevatedButton(
            onPressed: translateText,
            child: Text('Translate'),
          ),
        ],
      ),
    );
  }
}



