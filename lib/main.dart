import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();

    await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'EG'),
      ],
      path: 'assets/translations',
      // fallbackLocale: Locale('en','US'),
      fallbackLocale: Locale('ar', 'EG'),
      // startLocale: Locale('de', 'DE'),
      saveLocale: true,
      // useOnlyLangCode: true,

      // optional assetLoader default used is RootBundleAssetLoader which uses flutter's assetloader
      // install easy_localization_loader for enable custom loaders
      // assetLoader: RootBundleAssetLoader()
      // assetLoader: HttpAssetLoader()
      // assetLoader: FileAssetLoader()
      // assetLoader: CsvAssetLoader()
      // assetLoader: YamlAssetLoader() //multiple files
      // assetLoader: YamlSingleAssetLoader() //single file
      // assetLoader: XmlAssetLoader() //multiple files
      // assetLoader: XmlSingleAssetLoader() //single file
      // assetLoader: CodegenLoader()
    )  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


       localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
         fontFamily: 'Almarai',
        //textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      // Arabic RTL
      // localizationsDelegates: [
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [Locale("ar", "AE")],
      // locale: Locale("ar", "AE"),

      home: HomeScreen(),
    );
  }
}

