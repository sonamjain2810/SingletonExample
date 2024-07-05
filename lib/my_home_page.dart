import 'package:flutter/material.dart';
import 'package:singleton/Singleton/Singleton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> implements ProjectListener 
{
  @override
  void initState() { 
    super.initState();
    Singleton.instance
      ..listener = this
      ..startApp();
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

            ElevatedButton(onPressed:(){Singleton.instance.clickOnButton();} , child: const Text("Demo Click")),

          ],
        ),
      ),
    );
  }
  
  @override
  void iAmListening() {
    int a=1,b=10;
    debugPrint("3. Home Page I am Listening $a+$b");
    Navigator.of(context).pushNamed('/AboutUs');
  }
}

