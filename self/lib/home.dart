import 'package:flutter/material.dart';
import 'package:self/widgets.dart' as widgets;

List social = [
  [
    'Facebook',
    'https://www.facebook.com/',
    'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
    'Number of active users per month: 1.59 billion approximately',
  ],
  [
    'Gmail',
    'https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin',
    'https://image.flaticon.com/icons/png/512/281/281769.png',
    'Number of active users per month: 1 billion approximately',
  ],
  [
    'Instagram',
    'http://www.instagram.com/',
    'https://makeawebsitehub.com/wp-content/uploads/2016/05/instagram.png',
    'Number of active users per month: 400 million approximately',
  ],
  [
    'Twitter',
    'http://twitter.com/',
    'https://cdn2.iconfinder.com/data/icons/minimalism/512/twitter.png',
    'Number of active users per month: 320 million approximately'
  ],
  [
    'Skype',
    'http://skype.com/',
    'https://cdn3.iconfinder.com/data/icons/free-social-icons/67/skype_circle_color-512.png',
    'Number of active users per month: 300 million approximately'
  ],
  [
    'Youtube',
    'http://youtube.com/',
    'https://www.newsfolo.com/wp-content/uploads/2017/08/youtube.jpg',
    'Number of active users per month: 2 billion approximately'
  ],
  [
    'Telegram',
    'https://web.telegram.org/',
    'https://4.bp.blogspot.com/-IUDvPAuE9Rg/XE9Muo_8D-I/AAAAAAAAHdE/vDGQsIXh4GM8qdInx9AHPq984Q9P4BEQgCK4BGAYYCw/s1600/Icon-Telegram.png',
    'Number of active users per month: 24 million approximately'
  ],
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton.extended(
              elevation: 4.0,
              label: Text(
                'About the Dev.',
                style: TextStyle(fontFamily: 'OpenSans', letterSpacing: 0.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/reportHealth');
              },
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 10.0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Padding(
                        child: Image.asset(
                          'assets/info.png',
                          height: 30.0,
                        ),
                        padding: EdgeInsets.only(
                            top: 8.0, left: 0.0, right: 8.0, bottom: 10.0)),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Padding(
                        child: Image.asset(
                          'assets/favourite.png',
                          height: 30.0,
                        ),
                        padding: EdgeInsets.only(
                            top: 8.0, left: 8.0, right: 0.0, bottom: 10.0)),
                  ),
                ],
              ),
            ),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    pinned: true,
                    centerTitle: true,
                    title: Text(
                      'SELF - An All in One App',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color.fromRGBO(9, 9, 9, 1),
                                Color.fromRGBO(19, 19, 19, 1),
                                Color.fromRGBO(26, 26, 26, 1),
                              ])),
                    ),
                  ),
                ];
              },
              body: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                        child: Text(
                          'MOST USED APPS',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0)),
                    Container(
                      height: 120.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: social.length,
                        itemBuilder: (context, i) {
                          return Container(
                              width: 80.0,
                              child: widgets.appIconCard(social[i][0],
                                  social[i][1], social[i][2], context));
                        },
                      ),
                    ),
                    Padding(
                        child: Text(
                          'SELECT A CATEGORY',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                        padding: EdgeInsets.only(
                            top: 15.0, left: 10.0, bottom: 10.0)),
                    widgets.categoryCard(
                        'Social Media',
                        "Facebook, Instagram, Telegram and more.",
                        'a',
                        'social',
                        context),
                    widgets.categoryCard(
                        'Shopping Apps',
                        "Flipkart, Snapdeal, Amazon and more.",
                        'a',
                        'shopping',
                        context),
                    widgets.categoryCard('Sports', "Cricbuzz, Espn and more.",
                        'a', 'sports', context),
                    widgets.categoryCard(
                        'News', "CNN, NDTV and more.", 'a', 'news', context),
                  ],
                ),
              ),
            )));
  }
}
