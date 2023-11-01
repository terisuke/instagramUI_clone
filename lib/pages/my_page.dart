import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('instagram_clone✅',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(
                    'https://img.freepik.com/premium-vector/instagram-app-icon-social-media-logo-vector-illustration_277909-403.jpg?w=360',
                    width: 100,
                    height: 100,
                  ),
                  const Spacer(),
                  const Column(
                    children: [
                      Text('7,041',
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 16,
                      ),
                      ),
                      Text('投稿'),
                      
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text('1,000',
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 16,
                      ),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text('1,000',
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 16,
                      ),
                      ),
                      Text('フォロー'),
                    ],
                  ),
                ],
              ),
              const Text('Instagram',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              ),
              const Text('#YoursToMake',
              style: TextStyle(
                color: Colors.blue
              ),
              ),
              const Text('help.instagram.com',
              style: TextStyle(
                color: Colors.blue
              ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: (){},
                            child: const Text('フォロー中',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: (){},
                            child: const Text('メッセージ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: (){},
                    child: const Icon(Icons.arrow_drop_down),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: Images.map((imageUrl) => InstagramPostItem(imageUrl: imageUrl)).toList(),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}