import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:singleton/AboutUs.dart';
import 'package:singleton/Enums/project_routes_enum.dart';
import 'package:singleton/GifDetailPage.dart';
import 'package:singleton/GifsImages.dart';
import 'package:singleton/ImageDetailPage.dart';
import 'package:singleton/ImagesList.dart';
import 'package:singleton/MemeGenerator.dart';
import 'package:singleton/MessageDetailPage.dart';
import 'package:singleton/MessagesList.dart';
import 'package:singleton/QuotesDetailPage.dart';
import 'package:singleton/QuotesList.dart';
import 'package:singleton/ShayariDetailPage.dart';
import 'package:singleton/ShayariList.dart';
import 'package:singleton/StatusDetailPage.dart';
import 'package:singleton/StatusList.dart';
import 'package:singleton/my_home_page.dart';

void main() 
{
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        //'${ProjectRoutes.home}': (BuildContext context) => const MyHomePage(title: "Home Page"),
        '${ProjectRoutes.aboutUs}': (BuildContext context) => AboutUs(),
        '${ProjectRoutes.messagesList}': (BuildContext context) => const MessagesList(),
        '${ProjectRoutes.messagesDetailPage}': (BuildContext context) => MessageDetailPage(),
        '${ProjectRoutes.quotesList}': (BuildContext context) => QuotesList(),
        '${ProjectRoutes.quotesDetailPage}': (BuildContext context) => QuotesDetailPage(),
        '${ProjectRoutes.shayariList}': (BuildContext context) => ShayariList(),
        '${ProjectRoutes.shayariDetailPage}': (BuildContext context) => ShayariDetailPage(),
        '${ProjectRoutes.statusList}': (BuildContext context) => StatusList(),
        '${ProjectRoutes.statusDetailPage}': (BuildContext context) => StatusDetailPage(),
        '${ProjectRoutes.imagesList}': (BuildContext context) => ImagesList(),
        '${ProjectRoutes.imagesDetailPage}': (BuildContext context) => ImageDetailPage(),
        '${ProjectRoutes.gifsList}': (BuildContext context) => GifsImages(),
        '${ProjectRoutes.gifDetailPage}': (BuildContext context) => GifDetailPage(),
        '${ProjectRoutes.memeGenerator}': (BuildContext context) => MemeGenerator(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
