import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'data/Messages.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'data/Strings.dart';
import 'utils/SizeConfig.dart';
import 'utils/pass_data_between_screens.dart';

// ignore: must_be_immutable
class MessagesList extends StatefulWidget {
  
  const MessagesList({super.key});
  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  late String type;
 

  static final facebookAppEvents = FacebookAppEvents();

  var data;

  late BannerAd bannerAd1;
  bool isBannerAdLoaded = false;
  @override
  void initState() {
    super.initState();
    bannerAd1 = GetBannerAd();
  }

  BannerAd GetBannerAd() {
    return BannerAd(
        size: AdSize.largeBanner,
        adUnitId: Platform.isAndroid
            ? Strings.androidAdmobBannerId
            : Strings.iosAdmobBannerId,
        listener: BannerAdListener(onAdLoaded: (_) {
          setState(() {
            isBannerAdLoaded = true;
          });
        }, onAdFailedToLoad: (ad, error) {
          isBannerAdLoaded = true;
          ad.dispose();
        }),
        request: AdRequest())
      ..load();
  }

  @override
  void dispose() {
    super.dispose();
    bannerAd1.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as PassDataBetweenScreens;
    type = args.title;

    debugPrint('Message type is $type');

    if (type == '1') {
      // English
      data = Messages.englishData;
    } else if (type == '4') {
      // Hindi
      data = Messages.hindiData;
    } else if (type == '3') {
      // German
      data = Messages.germanData;
    } else if (type == '2') {
      // french
      data = Messages.frenchData;
    } else if (type == '5') {
      // Italian
      data = Messages.italyData;
    } else if (type == '6') {
      // Portuguese
      data = Messages.portugalData;
    } else if (type == '7') {
      // Spanish:
      data = Messages.spanishData;
    } else {
      data = Messages.weddingData;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message List",
          style: Theme.of(context).appBarTheme.toolbarTextStyle,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding:
                          EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                ),
                                borderRadius:
                                    // 40 /8.98 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(Icons.brightness_1,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                              title: Text(
                                data[index],
                                maxLines: 2,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: bannerAd1.size.height.toDouble(),
        width: bannerAd1.size.width.toDouble(),
        child: AdWidget(ad: bannerAd1),
      ),
    );
  }
}
