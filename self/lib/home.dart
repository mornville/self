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
    'Telegram',
    'https://web.telegram.org/',
    'https://cdn0.iconfinder.com/data/icons/social-flat-rounded-rects/512/telegram-512.png',
    'Facebook, Inc. is an American social media conglomerate corporation based in Menlo Park, California.',
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
    'https://elementarylibrarian.com/wp-content/uploads/2013/11/twitter-bird-white-on-blue.png',
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
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _searchview = TextEditingController();

  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text(
    'SELF - An all in one App',
    style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w700),
  );
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
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                pinned: true,
                centerTitle: true,
                // actions: <Widget>[
                //   IconButton(
                //     icon: customIcon,
                //     onPressed: () {
                //       setState(() {
                //         if (this.customIcon.icon == Icons.search) {
                //           this.customIcon = Icon(Icons.cancel);
                //           this.customSearchBar = TextField(
                //             autofocus: true,
                //             cursorColor: Colors.white,
                //             style: TextStyle(
                //                 fontSize: 14.0,
                //                 color: Colors.white,
                //                 fontFamily: 'Raleway',
                //                 fontWeight: FontWeight.w500),
                //             controller: _searchview,
                //             decoration: InputDecoration(
                //               border: InputBorder.none,

                //               hintText: "Enter App Name",
                //               hintStyle: TextStyle(
                //                   fontSize: 14.0,
                //                   color: Colors.white,
                //                   fontFamily: 'Raleway',
                //                   fontWeight: FontWeight.w500),
                //               fillColor: Colors.white,

                //               //fillColor: Colors.green
                //             ),
                //           );
                //         } else {
                //           customIcon = Icon(Icons.search);
                //           customSearchBar = Text(
                //             'SELF - An all in one App',
                //             style: TextStyle(
                //                 fontFamily: 'OpenSans',
                //                 fontWeight: FontWeight.w700),
                //           );
                //         }
                //       });
                //     },
                //   ),
                // ],
                // titleSpacing: 10.0,
                title: customSearchBar,
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
                      'Most Used Apps',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    padding: EdgeInsets.only(left: 10.0, bottom: 10.0)),
                Container(
                  height: 120.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: social.length,
                    itemBuilder: (context, i) {
                      return Container(
                          width: 80.0,
                          child: widgets.appIconCard(
                              social[i][0], social[i][2], social[i][2]));
                    },
                  ),
                ),
                Padding(
                    child: Text(
                      'Select Category',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    padding:
                        EdgeInsets.only(top: 20.0, left: 10.0, bottom: 10.0)),
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
                widgets.categoryCard('Sports', "Cricbuzz, Espn and more.", 'a',
                    'sports', context),
                widgets.categoryCard(
                    'News', "CNN, NDTV and more.", 'a', 'news', context),
              ],
            ),
          ),
        )));
  }
}
