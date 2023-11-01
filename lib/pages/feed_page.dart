import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';
import 'package:instagram_clone/pages/my_page.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'INSTAGRAM',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey),
            ),
            Text(
              '投稿',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        actions: [Container(width: 48)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/instagram-app-icon-social-media-logo-vector-illustration_277909-403.jpg?w=360'),
                  ),
                  title: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('instagram_clone✅', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('日本のどこか', style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.more_horiz),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 1.2,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: Images.map((imageUrl) => InstagramPostItem(imageUrl: imageUrl)).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(2, (index) {
                    return GestureDetector(
                      onTap: () {
                        _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _currentPage == index ? Colors.blue : Colors.grey,
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 8.0),
                          Icon(Icons.chat_bubble_outline),
                          SizedBox(width: 8.0),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.send),
                          ),
                        ],
                      ),
                      Icon(Icons.bookmark_border),
                    ],
                  ),
                ),
                Text(
                  '「いいね！」704,899件',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text('なぁ〜にぃ〜？やっちまったな！', style: TextStyle()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
