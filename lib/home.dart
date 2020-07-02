import 'package:flutter/material.dart';
import 'package:self/widgets.dart' as widgets;
import 'addQuickAccessApps.dart' as af;

List topApps = [
  [
    'Flipkart',
    'https://www.flipkart.com/',
    'flipkart.png',
    'Arround 200 million registered users.'
  ],
  [
    'Inshorts',
    'https://inshorts.com/en/read',
    'inshorts.png',
    'Around 1 million readers every month.',
  ],
  [
    'Facebook',
    'https://www.facebook.com/',
    'facebook.png',
    'Number of active users per month: 1.59 billion approximately',
  ],
  [
    'Gmail',
    'https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin',
    'gmail.png',
    'Number of active users per month: 1 billion approximately',
  ],
  [
    'Instagram',
    'http://www.instagram.com/',
    'instagram.png',
    'Number of active users per month: 400 million approximately',
  ],
  [
    'Youtube',
    'http://youtube.com/',
    'youtube.png',
    'Number of active users per month: 2 billion approximately'
  ],
  [
    'Cricbuzz',
    'https://www.cricbuzz.com/',
    'cricbuzz.png',
    'Around 13 million total users.'
  ],
  [
    'Amazon',
    'https://www.amazon.in/',
    'amazon.png',
    'Around 150 million registered users.'
  ],
];

List favourites = [];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Function to create full screen dialog for adding favorites
  void _openAddFullDialog() {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return af.AddFavourite();
        },
        fullscreenDialog: true));
  }

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
                'Quick Access',
                style: TextStyle(fontFamily: 'OpenSans', letterSpacing: 0.0),
              ),
              onPressed: () {
                _openAddFullDialog();
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
                          'QUICK ACCESS',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                        padding:
                            EdgeInsets.only(top: 0.0, left: 10.0, bottom: 0.0)),
                    favourites.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'No Apps Added,  ',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Add Some',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w700)),
                                      ],
                                    ),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 10.0, left: 10.0, bottom: 10.0)),
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: () {
                                  _openAddFullDialog();
                                },
                              ),
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
                    Padding(
                        child: Text(
                          'TOP USED APPS',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                        padding: EdgeInsets.only(
                            left: 10.0, bottom: 5.0, top: 30.0)),
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
                  ],
                ),
              ),
            )));
  }
}
