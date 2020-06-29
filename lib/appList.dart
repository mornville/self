import 'package:flutter/material.dart';

class AppList extends StatefulWidget {
  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  //appList
  List social = [
    [
      'Facebook',
      'https://www.facebook.com/',
      'https://www.nicepng.com/png/full/10-104828_facebook-android-icon-facebook-app-logo-transparent.png',
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
      'Facebook, Inc. is an American social media conglomerate corporation based in Menlo Park, California.',
    ],
  ];
  List news = [
    [
      'Inshorts',
      'https://inshorts.com/en/read',
      'https://www.mediainfoline.com/wp-content/uploads/2015/12/Inshorts-Logo.png',
      'Around 1 million readers every month.',
    ],
    [
      'NDTV',
      'https://www.ndtv.com/',
      'https://lh3.googleusercontent.com/oMM2LtXhM8WWgMIVUz-oXWkaywRAnOJzCZBsYOpyuVg6yuWhKekeA-oXbzbTQKHgGuAa',
      'Around 100 thousand viewers every month.',
    ],
    [
      'BBC World News',
      'https://www.bbc.com/news',
      'https://lh3.googleusercontent.com/Iip-8Yn3PLAzecCMb4ZaHTvFObl3ETUWZmd5zLflhbB6BXKyNc5aM4hrGAA9NXSs7i0',
      'Around 140 million global readers every month.',
    ],
    [
      'Fox News',
      'https://www.foxnews.com/',
      'https://newsroom.mattressfirm.com/wp-content/uploads/2019/01/300x300xFox-news-logo.png,qx16551.pagespeed.ic.OAfuiuNo3H.png',
      'Around 200 million global readers every month.',
    ],
  ];

  List sports = [
    [
      'Cricbuzz',
      'https://www.cricbuzz.com/',
      'https://lh3.googleusercontent.com/3z09fC48t4igPsjnohFu1Zbm1POROtwBRR4pAC4ZpDR5ZCyf0xIx3e3oHAZjdhivgQ',
      'Around 13 million total users.'
    ],
    [
      'ESPN',
      'https://www.espn.in/',
      'https://a.espncdn.com/espnAppLP/us_en/images/1-appicon.png',
      'Around 6 million users a year.'
    ],
    [
      'Yahoo Sports',
      'https://sports.yahoo.com/',
      'https://s.yimg.com/cv/apiv2/myc/sports/Sports_icon_0919_250x252.png',
      'Around 10 million users in the course of many years.'
    ],
  ];

  List shopping = [
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
      'Snapdeal',
      'https://www.snapdeal.com/',
      'https://i.pinimg.com/originals/b4/1c/d2/b41cd2259fae83ce40e1e848c3c7d1b7.png',
      'Around 110 million active users per month.'
    ],
    [
      'Club Factory',
      'https://www.clubfactory.com/',
      'https://lh3.googleusercontent.com/W6wSm0MxO778oVPFqSLlhN69q323mNoVOC_ibpWhRE4T_-QXJgFHuFQyHjK7MCOglQ',
      'Around 100 million active users per month.'
    ],
  ];
  List temp;
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    if (data['category'] == 'social') {
      temp = social;
    } else if (data['category'] == 'news') {
      temp = news;
    } else if (data['category'] == 'shopping') {
      temp = shopping;
    } else if (data['category'] == 'sports') {
      temp = sports;
    } else {
      temp = [[], [], [], []];
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(data['category'] == 'social'
            ? 'Social Apps'
            : data['category'] == 'news'
                ? 'News'
                : data['category'] == 'sports' ? 'Sports' : 'Shopping Apps'),
      ),
      body: ListView.builder(
        itemCount: temp.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/appScreen', arguments: {
                    "appName": temp[i][0].toString(),
                    "appUrl": temp[i][1].toString(),
                    "appLogo": temp[i][2].toString(),
                  });
                },
                title: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    temp[i][0].toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  child: Text(
                    temp[i][3],
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Container(
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Image(
                      image: NetworkImage(temp[i][2]),
                      height: 50.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
