import 'package:flutter/material.dart';

class Singleton {
  Singleton._();

  static final Singleton _instance = Singleton._();

  static Singleton get instance => _instance;

  ProjectListener? listener;

  void startApp() {
    debugPrint("1. App is Started");
  }

  void clickOnButton() {
    debugPrint("2. Click on Elevated Button");
    listener?.iAmListening();
    
  }
}

abstract class ProjectListener {
  //void onClueUpdated(String clue);

  //void onGameOver(int correctAnswers);

  //void onLevelCleared();

  //void onNewLevel(int level, Drawing drawing, String clue);

  void iAmListening();
}
