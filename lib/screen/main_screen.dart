import 'package:flutter/material.dart';
import 'package:zeego/pages/home_page.dart';
import 'package:zeego/pages/order_page.dart';
import 'package:zeego/pages/profile_page.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex=0;
  HomePage homePage ; 
  OrderPage orderPage  ;
  ProfilePage profilePage ; 
  List<Widget>page;
  Widget currentPage ; 
  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage =OrderPage();
    profilePage = ProfilePage();
    page=[homePage , orderPage ,profilePage];
    currentPage = homePage ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentPageIndex=index ; 
            currentPage = page[index];
          });
        },
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text("Home")

        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Home")

        ),

      ]
      ),
      body: currentPage,
    );
  }
}