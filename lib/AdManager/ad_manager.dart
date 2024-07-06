import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../utils/pass_data_between_screens.dart';
import 'ad_helper.dart';

class AdManager {
  AdManager._();

  static final AdManager _instance = AdManager._();

  static AdManager get instance => _instance;

  AdListener? adListener;

  int adCounter = 0;

  // COMPLETE: Add _bannerAd
  BannerAd? _bannerAd;

  // COMPLETE: Add _interstitialAd
  InterstitialAd? _interstitialAd;

  void loadAdsInAdManager() {
    debugPrint("AdManager is Started Loading Ads...");

    loadBannerAd();

    loadInterstitialAd();
  }

  void showInterstitialAd(s, [PassDataBetweenScreens? object]) {
    debugPrint("Show Interstitial Ads");
    if (_interstitialAd != null) {
      _interstitialAd?.show();
    } else {
      return;
    }

    //adListener?.iAmListening();
  }

  // COMPLETE: Implement _loadInterstitialAd()
  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          //ad.show();
          _interstitialAd = ad;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              loadInterstitialAd();
              //_moveToHome();
              //Navigator.of(context).pushNamed(s, arguments: object);
            },
          );

          /*setState(() {
            _interstitialAd = ad;
          });*/
        },
        onAdFailedToLoad: (err) {
          debugPrint('Failed to load an interstitial ad: ${err.message}');
          //Navigator.of(context).pushNamed('/AboutUs');
        },
      ),
    );
  }

  void loadBannerAd() {
// COMPLETE: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          /*setState(() {
            _bannerAd = ad as BannerAd;
          });*/
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }
}

abstract class AdListener {
  //void onClueUpdated(String clue);

  //void onGameOver(int correctAnswers);

  //void onLevelCleared();

  //void onNewLevel(int level, Drawing drawing, String clue);
}