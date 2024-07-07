import 'package:flutter/material.dart';
import 'package:singleton/AdManager/ad_manager.dart';
import 'package:singleton/Enums/project_routes_enum.dart';
import 'Singleton/project_manager.dart';
import 'utils/pass_data_between_screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements ProjectListener, AdListener {
  @override
  void initState() {
    super.initState();
    ProjectManager.instance
      ..listener = this
      ..startApp();

    AdManager.instance
    ..adListener = this
    ..loadAdsInAdManager();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton(ProjectRoutes.messagesList.toString(),PassDataBetweenScreens("6", "2"));
                },
                child: const Text("Messages Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton(ProjectRoutes.quotesList.toString());
                },
                child: const Text("Quotes Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton(ProjectRoutes.aboutUs.toString());
                },
                child: const Text("About Us")),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    ProjectManager.instance.listener = null;
    AdManager.instance.adListener = null;
    super.dispose();
  }

  @override
  void moveToScreen(String s,[PassDataBetweenScreens? object]) {
    // TODO: implement moveToScreen
    debugPrint("Move to Screen $s");
    Navigator.of(context).pushNamed(s,arguments: object);
  }
  
  @override
  void showAd(String s,[PassDataBetweenScreens? object]) {
    // TODO: implement showAd
    debugPrint("Showing Ad Now");
    AdManager.instance.showInterstitialAd(s,object);
  }
  
  @override
  void moveToScreenAfterAd(String s, [PassDataBetweenScreens? object]) {
    // TODO: implement moveToScreenAfterAd
    debugPrint("Move to Screen After Ad $s");
    Navigator.of(context).pushNamed(s,arguments: object);
  }
}
