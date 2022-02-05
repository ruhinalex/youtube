// import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DemoApp(),
//     );
//   }
// }

// class DemoApp extends StatefulWidget {
//   @override
//   _DemoAppState createState() => _DemoAppState();
// }

// class _DemoAppState extends State<DemoApp> {
//   static String key = "AIzaSyDnqjvLxw_YihDGP3llimAwim-edU6TKZc";

//   YoutubeAPI youtube = YoutubeAPI(key);
//   List<YouTubeVideo> videoResult = [];

//   Future<void> callAPI() async {
//     String query = "Flutter";
//     videoResult = await youtube.search(
//       query,
//       order: 'relevance',
//       videoDuration: 'any',
//     );
//     videoResult = await youtube.nextPage();
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();
//     callAPI();
//     print('hello');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[100],
//       appBar: AppBar(
//         title: Text('Youtube API'),
//       ),
//       body: ListView(
//         children: videoResult.map<Widget>(listItem).toList(),
//       ),
//     );
//   }

//   Widget listItem(YouTubeVideo video) {
//     return Card(
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 7.0),
//         padding: EdgeInsets.all(12.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(right: 20.0),
//               child: Image.network(
//                 video.thumbnail.small.url ?? '',
//                 width: 120.0,
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     video.title,
//                     softWrap: true,
//                     style: TextStyle(fontSize: 18.0),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: 3.0),
//                     child: Text(
//                       video.channelTitle,
//                       softWrap: true,
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Text(
//                     video.url,
//                     softWrap: true,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String apiKey = "AIzaSyDnqjvLxw_YihDGP3llimAwim-edU6TKZc";

  YoutubeAPI youtube = YoutubeAPI(apiKey);
  List<YouTubeVideo> videoResult = [];

  Future<void> callAPI() async {
    String query = "Flutter channel:";
    videoResult = await youtube.search(query);
    // videoResult = await youtube.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              callAPI();
              print(videoResult);
            },
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
