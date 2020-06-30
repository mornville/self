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
      'Twitter',
      'http://twitter.com/',
      'twitter.png',
      'Number of active users per month: 320 million approximately'
    ],
    [
      'Skype',
      'http://skype.com/',
      'skype.png',
      'Number of active users per month: 300 million approximately'
    ],
    [
      'Youtube',
      'http://youtube.com/',
      'youtube.png',
      'Number of active users per month: 2 billion approximately'
    ],
    [
      'Telegram',
      'https://web.telegram.org/',
      'telegram.png',
      'Number of active users per month: 200 million approximately'
    ],
  ];
  List news = [
    [
      'Inshorts',
      'https://inshorts.com/en/read',
      'inshorts.png',
      'Around 1 million readers every month.',
    ],
    [
      'NDTV',
      'https://www.ndtv.com/',
      'ndtv.png',
      'Around 100 thousand viewers every month.',
    ],
    [
      'BBC World News',
      'https://www.bbc.com/news',
      'bbc.png',
      'Around 140 million global readers every month.',
    ],
    [
      'Fox News',
      'https://www.foxnews.com/',
      'fox.png',
      'Around 200 million global readers every month.',
    ],
  ];

  List sports = [
    [
      'Cricbuzz',
      'https://www.cricbuzz.com/',
      'cricbuzz.png',
      'Around 13 million total users.'
    ],
    [
      'ESPN',
      'https://www.espn.in/',
      'espn.png',
      'Around 6 million users a year.'
    ],
    [
      'Yahoo Sports',
      'https://sports.yahoo.com/',
      'yahooSports.png',
      'Around 10 million users in the course of many years.'
    ],
  ];

  List shopping = [
    [
      'Amazon',
      'https://www.amazon.in/',
      'amazon.png',
      'Around 150 million registered users.'
    ],
    [
      'Flipkart',
      'https://www.flipkart.com/',
      'flipkart.png',
      'Arround 200 million registered users.'
    ],
    [
      'Snapdeal',
      'https://www.snapdeal.com/',
      'snapdeal.png',
      'Around 110 million active users per month.'
    ],
    [
      'Club Factory',
      'https://www.clubfactory.com/',
      'clubFactory.png',
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
                      image: AssetImage('assets/appIcons/' + temp[i][2]),
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
