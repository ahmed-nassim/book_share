import 'dart:async';

import 'package:book_share/views/home/pages/profile/view.dart';
import 'package:book_share/views/home/view.dart';
import 'package:flutter/material.dart';

import '../../core/cache_helper.dart';
import '../../core/helper_method.dart';
import '../on_boarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
      navigateTo(
        page:CacheHelper.getIfFirstTime()
            ? const OnBoardingView()
            : CacheHelper.getToken().isEmpty
            ?const HomeView()
            :const ProfilePage(),
        withHistory: true,

      );
    } );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6EA1),
      body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Stack(
                children: [
                  Container(child: Image.asset(
                    "assets/images/line_splash.png", width: 165.86,
                    height: 814.13,
                  ), margin:const EdgeInsets.only(right: 180) ),

                  Container(
                      margin:const EdgeInsets.only(top: 377,left: 125) ,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/app_logo.png", width: 32.95,
                            height: 51.3,
                            alignment: Alignment.topCenter,),
                          const Text("Book Share", style: TextStyle(color: Color(0xffFFFFFF),
                              fontStyle: FontStyle.italic,
                              fontSize: 20),)
                        ],
                      )


                  )

                ],
              )


              ],
            ),
          )

      ),

    );
  }
}

