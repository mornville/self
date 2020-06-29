import 'package:flutter/material.dart';
import 'package:self/widgets.dart' as widgets;

List topApps = [
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
    'Inshorts',
    'https://inshorts.com/en/read',
    'https://www.mediainfoline.com/wp-content/uploads/2015/12/Inshorts-Logo.png',
    'Around 1 million readers every month.',
  ],
  [
    'Cricbuzz',
    'https://www.cricbuzz.com/',
    'https://lh3.googleusercontent.com/3z09fC48t4igPsjnohFu1Zbm1POROtwBRR4pAC4ZpDR5ZCyf0xIx3e3oHAZjdhivgQ',
    'Around 13 million total users.'
  ],
  [
    'Amazon',
    'https://www.amazon.in/',
    'https://mllh7z7bitrc.i.optimole.com/jHdOZSo-M3dBIfGf/w:216/h:216/q:75/dpr:2.6/https://tinuiti.com/wp-content/uploads/legacysitecontent/cpcs/posts_01/2016/06/Amazon-Shopping-App-Logo-Android.png',
    'Around 150 million registered users.'
  ],
  [
    'Flipkart',
    'https://www.flipkart.com/',
    'https://pluspng.com/img-png/logo-flipkart-png-flipkart-coupons-discount-offers-promo-codes-200.png',
    'Arround 200 million registered users.'
  ],
  [
    'Facebook',
    'https://www.facebook.com/',
    'https://www.nicepng.com/png/full/10-104828_facebook-android-icon-facebook-app-logo-transparent.png',
    'Number of active users per month: 1.59 billion approximately',
  ],
];

List favourites = [
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
                          'TOP USED APPS',
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
                        itemCount: topApps.length,
                        itemBuilder: (context, i) {
                          return Container(
                              width: 80.0,
                              child: widgets.appIconCard(topApps[i][0],
                                  topApps[i][1], topApps[i][2], context));
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
                    widgets.categoryCard(
                        'Sports',
                        "Cricbuzz, Espn, Yahoo Sports and more.",
                        'a',
                        'sports',
                        context),
                    widgets.categoryCard(
                        'News',
                        "Fox News, Inshorts, BBC and more.",
                        'a',
                        'news',
                        context),
                    Padding(
                        child: Text(
                          'FAVOURITE APPS',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                        padding: EdgeInsets.only(
                            top: 30.0, left: 10.0, bottom: 10.0)),
                    favourites.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  child: Text(
                                    'No favourites added',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 10.0, left: 10.0, bottom: 10.0)),
                            ],
                          )
                        : Container(
                            height: 120.0,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: favourites.length,
                              itemBuilder: (context, i) {
                                return Container(
                                    width: 80.0,
                                    child: widgets.appIconCard(
                                        favourites[i][0],
                                        favourites[i][1],
                                        favourites[i][2],
                                        context));
                              },
                            ),
                          ),
                  ],
                ),
              ),
            )));
  }
}
