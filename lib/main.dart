import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/cache_helper.dart';
import 'core/helper_method.dart';
import 'views/splash/view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  CacheHelper.clear();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context , child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'products App',
            navigatorKey: navigatorKey,

            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.pink ,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
      child:  const SplashView(),
    );
  }
}































// import 'package:flutter/material.dart';
//
// import 'core/cache_helper.dart';
// import 'core/helper_method.dart';
// import 'views/after_on_boarding/view.dart';
// import 'views/home/view.dart';
// import 'views/on_boarding/view.dart';
// import 'views/splash/view.dart';
//
// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await CacheHelper.init();
//   CacheHelper.clear();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: navigatorKey,
//       debugShowCheckedModeBanner: false,
//       title: 'Book Share',
//       theme: ThemeData(
//
//         primarySwatch: Colors.pink,
//       ),
//       home:  HomeView(),
//     );
//   }
// }
//
