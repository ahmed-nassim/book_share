import 'package:book_share/views/home/pages/home/view.dart';
import 'package:book_share/views/home/pages/library/view.dart';
import 'package:book_share/views/home/pages/store/view.dart';
import 'package:book_share/views/home/pages/wishlist/view.dart';
import 'package:flutter/material.dart';

import 'pages/profile/view.dart';

class HomeView extends StatefulWidget {
   const HomeView({Key? key}) : super(key: key);


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final pages=[
     const HomePage(),
     const LibraryPage(),
    const WishlistPage(),
    StorePage(),
    const ProfilePage(),

  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: const Color(0xffFF6EA1),
         unselectedItemColor: const Color(0xffE5E5E5),
        selectedFontSize: 15,
        currentIndex: currentPage,
        onTap:(int index){
          currentPage=index;
          setState(() {
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search),label:"Discover" ,),
          BottomNavigationBarItem(icon: Icon(Icons.menu,),label:"Library" ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),label:"Wishlist" ),
          BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined),label:"Store " ),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label:"Profile " ),

        ],
        backgroundColor: Colors.pink,

      ),
    );
  }
}
