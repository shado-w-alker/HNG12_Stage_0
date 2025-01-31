import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG12',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Color(0xFFF6F6F6),
            backgroundColor: Color(0xFF6230A3),
            disabledForegroundColor: Color(0xFF4F4F4F),
            side: const BorderSide(color: Color(0xFF6230A3)),
            padding: const EdgeInsets.symmetric(vertical: 20),
            textStyle: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
      home: const MyHomePage(title: 'HNG12 STAGE 0'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6230A3),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (await canLaunchUrlString(
                        'https://github.com/shado-w-alker/HNG12_Stage_0')) {
                      await launchUrlString(
                          'https://github.com/shado-w-alker/HNG12_Stage_0',
                          mode: LaunchMode.inAppWebView);
                    } else if (await canLaunchUrlString(
                        'https://github.com/shado-w-alker/HNG12_Stage_0')) {
                      await launchUrlString(
                          'https://github.com/shado-w-alker/HNG12_Stage_0');
                    } else {
                      throw 'Could Open Git Repo Now';
                    }
                  },
                  child: const Text(
                    'Open Github Repository',
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (await canLaunchUrlString(
                        'http://hng.tech/hire/flutter-developers')) {
                      await launchUrlString(
                          'http://hng.tech/hire/flutter-developers',
                          mode: LaunchMode.inAppWebView);
                    } else if (await canLaunchUrlString(
                        'http://hng.tech/hire/flutter-developers')) {
                      await launchUrlString(
                          'http://hng.tech/hire/flutter-developers');
                    } else {
                      throw 'Could Open HNG';
                    }
                  },
                  child: const Text(
                    'Hire Flutter Developers',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
