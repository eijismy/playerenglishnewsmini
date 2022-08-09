import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'dart:io' show Platform;
// import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); // これ
  // MobileAds.instance.initialize(); // これ
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> listItems = [
    {
      'text': '一年の計は正月にあり！',
      'sub': 'Tips for Effectively Studying English',
      'img': '../assets/data_images/playerenglishnews_3_30073.jpg',
      'snd': '../assets/data_sounds/playerenglishnews_3_30073.m4a'
    },
    {
      'text': 'アメリカと日本の正月休みの違い',
      'sub': 'Differences in How the New Year is Spent in the U.S. and Japan',
      'img': '../assets/data_images/playerenglishnews_7_70034.jpg',
      'snd': '../assets/data_sounds/playerenglishnews_7_70034.m4a'
    },
    {
      'text': 'スーパームーンの秘密',
      'sub': 'What is the supermoon?',
      'img': '../assets/data_images/playerenglishnews_5_50001.jpg',
      'snd': '../assets/data_sounds/playerenglishnews_5_50001.m4a'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '英語リスニングアプリ',
      theme: ThemeData(
        fontFamily: 'NotoSansJP',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // bottomNavigationBar: _admobBannerAd(), // これ
        appBar: AppBar(
          title: Text('英語リスニング'),
        ),
        // body: Center(
        //   child: Text('Hello World'),
        // ),
        body: Column(
          children: <Widget>[
            Card(
              child: Material(
                child: InkWell(
                    highlightColor: Colors.blue,
                    splashColor: Colors.red,
                    child: ListTile(
                      leading: Image.asset(
                          '../assets/data_images/playerenglishnews_3_30073.jpg'),
                      title: Text('一年の計は正月にあり！英語学習初心者におすすめの学習法'),
                      subtitle: Text('Tips for Effectively Studying English'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    onTap: () {
                      AudioCache player = AudioCache();
                      player.play(
                          '../assets/data_sounds/playerenglishnews_3_30073.m4a');
                    }),
              ),
            ),
            Card(
              child: Material(
                child: InkWell(
                    highlightColor: Colors.blue,
                    splashColor: Colors.red,
                    child: ListTile(
                      leading: Image.asset(
                          '../assets/data_images/playerenglishnews_7_70034.jpg'),
                      title: Text('アメリカと日本の正月休みの違い'),
                      subtitle: Text(
                          'Differences in How the New Year is Spent in the U.S. and Japan'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    onTap: () {
                      AudioCache player = AudioCache();
                      player.play(
                          '../assets/data_sounds/playerenglishnews_7_70034.m4a');
                    }),
              ),
            ),
            Card(
              child: Material(
                child: InkWell(
                    highlightColor: Colors.blue,
                    splashColor: Colors.red,
                    child: ListTile(
                      leading: Image.network(
                          '../assets/data_images/playerenglishnews_5_50001.jpg'),
                      title: Text('スーパームーンの秘密'),
                      subtitle: Text('What is the supermoon?'),
                      trailing: Icon(Icons.more_vert),
                    ),
                    onTap: () {
                      AudioCache player = AudioCache();
                      player.play(
                          '../assets/data_sounds/playerenglishnews_5_50001.m4a');
                    }),
              ),
            ),

            // Card(
            //   child: Material(
            //     child: InkWell(
            //         highlightColor: Colors.blue,
            //         splashColor: Colors.red,
            //         child: ListView.builder(
            //           itemCount: listItems.length,
            //           itemBuilder: (context, index) {
            //             return ListTile(
            //               leading: Image.network(
            //                   listItems[index]['img']),
            //               title: listItems[index]['text'],
            //               subtitle: listItems[index]['sub']

            //             );
            //           },
            //         ),
            //         onTap: () {
            //           AudioCache player = AudioCache();
            //           player.play(
            //               '../assets/data_sounds/playerenglishnews_5_50001.m4a');
            //         }),
            //   ),
            // ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  // Widget _admobBannerAd() {
  //   final adUnitId = Platform.isAndroid
  //       ? 'ca-app-pub-3940256099942544/6300978111'
  //       : 'ca-app-pub-3940256099942544/2934735716';
  //   final bannerAd = BannerAd(
  //     adUnitId: adUnitId,
  //     size: AdSize.banner,
  //     request: const AdRequest(),
  //     listener: const BannerAdListener(),
  //   );
  //   bannerAd.load();
  //   return SizedBox(
  //     height: 60,
  //     child: AdWidget(ad: bannerAd),
  //   );
  // }
}
