import 'package:ecommstore/components/horizontal_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Orders',
      style: optionStyle,
    ),
    Text(
      'Index 2: Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 3: Chat',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.scaleDown,
        images: [
          AssetImage('assets/images/offers/offer1.jpg'),
          AssetImage('assets/images/offers/offer2.jpg'),
          AssetImage('assets/images/offers/offer3.jpg'),
          AssetImage('assets/images/offers/offer4.jpg'),
          AssetImage('assets/images/offers/offer5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 0.0,
        indicatorBgPadding: 0.0,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      //=====================AppBar Section==============
      appBar: PreferredSize(
          child: Container(
            height: 90,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(10, 10),
                      color: Colors.black12,
                      blurRadius: 10)
                ]),
            child: AppBar(
                backgroundColor: Colors.lightGreen.shade50,
                elevation: 1.0,
                iconTheme: IconThemeData(color: Colors.grey[700]),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'V-Kart',
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
                actions: <Widget>[
                  new IconButton(icon: Icon(Icons.search), onPressed: () => {}),
                  new IconButton(
                      icon: Icon(Icons.shopping_cart), onPressed: () => {}),
                ]),
          ),
          preferredSize: Size.fromHeight(100.0)),
      //=====================Drawer Section========================
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          //===============Head Section of Drawer====================
          new UserAccountsDrawerHeader(
            accountName: Text(
              'Tejas Parkar',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'tparkar0@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  child: Icon(Icons.person)),
            ),
            decoration: new BoxDecoration(
              color: Colors.lightGreen.shade50,
            ),
          ),

          //===============Body Section of Drawer=======================

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('My Subscription'),
              leading: Icon(Icons.date_range, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('Need Help'),
              leading: Icon(Icons.help, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('Share'),
              leading: Icon(Icons.share, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () => {},
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app, color: Colors.black),
            ),
          ),
        ],
      )),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: NeuCard(
                curveType: CurveType.flat,
                bevel: 1,
                decoration: NeumorphicDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white12),
                child: Container(
                    height: 170,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                          'No solts available for non-milk items till 04/06/2020(Thu).Please try again tomorrow. However, you can continue ordering milk items for next day.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 18)),
                    ))),
          ),
          NeuCard(
            curveType: CurveType.flat,
            bevel: 1,
            decoration: NeumorphicDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white12),
          ),

          //================OFFERS CAROUSEL===========================
          image_carousel,
          Padding(padding: const EdgeInsets.all(8),
            child: Text('Category one'),
          ),
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(8),
            child: Text('Category two'),
          ),
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(8),
            child: Text('Category three'),
          ),
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(8),
            child: Text('Category four'),
          ),
          HorizontalList(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.0,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text('Wallet'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('Chat'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green.shade500,
        onTap: _onItemTapped,
      ),
    );
  }
}
