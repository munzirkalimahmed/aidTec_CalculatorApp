import 'package:calculator_app/splash_service.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  SplashServices splashServices = SplashServices();
  
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('image/splash.png', width: 500,height: 200,),

      ),
    );
  }
}
