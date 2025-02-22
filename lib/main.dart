import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meta_seo/meta_seo.dart';
import 'components/atomic/pages/portfolio_page.dart';
import 'core/theme/text_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // Inglês
        Locale('pt', ''), // Português
        // Adicione outros idiomas conforme necessário
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: AppTextTheme.textTheme,
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: WidgetStateProperty.all(Colors.grey[500]),
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors
                .white, // Define a cor do ícone do menu hambúrguer como branco
          ),
        ),
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: "/",
      home: const PortfolioPage(title: 'Home')..loadSEO(),
    );
  }
}
