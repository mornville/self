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
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(data['category'] == 'social'
            ? 'Social Apps'
            : data['category'] == 'news'
                ? 'News'
                : data['category'] == 'sports' ? 'Sports' : 'Shopping Apps'),
      ),
      body: ListView.builder(
        itemCount: social.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/appScreen', arguments: {
                    "appName": social[i][0].toString(),
                    "appUrl": social[i][1].toString(),
                    "appLogo": social[i][2].toString(),
                  });
                },
                title: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    social[i][0].toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  child: Text(
                    social[i][3],
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
                      image: NetworkImage(social[i][2]),
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
