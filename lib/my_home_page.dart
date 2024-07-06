import 'package:flutter/material.dart';
import 'package:singleton/AdManager/ad_manager.dart';
import 'Singleton/project_manager.dart';
import 'utils/pass_data_between_screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements ProjectListener {
  @override
  void initState() {
    super.initState();
    ProjectManager.instance
      ..listener = this
      ..startApp();

    AdManager.instance.loadAdsInAdManager();
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
                  ProjectManager.instance.clickOnButton('/MessagesList',PassDataBetweenScreens("6", "2"));
                },
                child: const Text("Messages Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton('/QuotesList');
                },
                child: const Text("Quotes Click")),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
                onPressed: () {
                  ProjectManager.instance.clickOnButton('/AboutUs');
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
    super.dispose();
  }

  @override
  void moveToScreen(String s,[PassDataBetweenScreens? object]) {
    debugPrint("Move to Screen $s");
    Navigator.of(context).pushNamed(s,arguments: object);
  }
  
  @override
  void showAd(String s,[PassDataBetweenScreens? object]) {
    // TODO: implement showAd
    debugPrint("Showing Ad Now");
    AdManager.instance.showInterstitialAd(s,object);
  }
}
