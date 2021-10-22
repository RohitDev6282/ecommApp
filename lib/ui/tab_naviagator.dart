// import 'package:eco_app/ui/homepage.dart';
// import 'package:eco_app/ui/profile.dart';
// import 'package:eco_app/ui/search.dart';
// import 'package:eco_app/ui/searchPage/search_page.dart';
// import 'package:eco_app/ui/shop.dart';
// import 'package:flutter/material.dart';

// class TabNavigator extends StatelessWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final String tabItem;
//   const TabNavigator({ Key? key,required this.navigatorKey,required this.tabItem }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
   
//     Widget child ;
//     if(tabItem == "Page1")
//       child = HomePage();
//     else if(tabItem == "Page2")
//       child = Shop();
//     else if(tabItem == "Page3")
//       child = Search();
//        else if(tabItem == "Page4")
//       child = Profile();
//    return Navigator(
//       key: navigatorKey,
//       onGenerateRoute: (routeSettings) {
//         return MaterialPageRoute(
//           builder: (context) => child
//         );
//       },
//     );
//   }
// }
