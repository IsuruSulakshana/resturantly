import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturantly/model/postModel.dart';
import 'package:resturantly/model/shopModel.dart';
import 'package:resturantly/widget/chat/photo.dart';
import 'package:resturantly/widget/home/post.dart';
import 'package:resturantly/widget/home/searchBar.dart';
import 'package:resturantly/widget/home/story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController input = TextEditingController();
  bool isTapping = false;
  int _initValue = 100;
  final List _allShop = [
    ShopModel(
        shopName: "KFC",
        distance: 100,
        border: true,
        logo: 'asset/image/nearShop/logo/logo2.png',
        image: 'asset/image/nearShop/image/storyImage1.png'),
    ShopModel(
        shopName: "BurgerKIng",
        distance: 120,
        border: false,
        logo: 'asset/image/nearShop/logo/logo1.png',
        image: 'asset/image/nearShop/image/storyImage2.png'),
    ShopModel(
        shopName: "MacDonalds",
        distance: 160,
        border: false,
        logo: 'asset/image/nearShop/logo/logo3.png',
        image: 'asset/image/nearShop/image/storyImage3.png'),
    ShopModel(
        shopName: "Bayfonte",
        distance: 180,
        border: false,
        logo: 'asset/image/nearShop/logo/logo4.png',
        image: 'asset/image/nearShop/image/storyImage4.png'),
    ShopModel(
        shopName: "Randeeza",
        distance: 200,
        border: false,
        logo: 'asset/image/nearShop/logo/logo5.png',
        image: 'asset/image/nearShop/image/storyImage5.png'),
    ShopModel(
        shopName: "Galadhari",
        distance: 220,
        border: false,
        logo: 'asset/image/nearShop/logo/logo6.png',
        image: 'asset/image/nearShop/image/storyImage6.png'),
    ShopModel(
        shopName: "Hilton",
        distance: 240,
        border: false,
        logo: 'asset/image/nearShop/logo/logo7.png',
        image: 'asset/image/nearShop/image/storyImage7.png'),
    ShopModel(
        shopName: "Pharo",
        distance: 260,
        border: false,
        logo: 'asset/image/nearShop/logo/logo8.png',
        image: 'asset/image/nearShop/image/storyImage8.png'),
    ShopModel(
        shopName: "Embassy",
        distance: 280,
        border: false,
        logo: 'asset/image/nearShop/logo/logo9.png',
        image: 'asset/image/nearShop/image/storyImage9.png'),
  ];

  final List _post = [
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "Just now",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage1.png",
        likes: "12k",
        comments: "256",
        liked: false),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "1 hour ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage2.png",
        likes: "24k",
        comments: "25",
        liked: true),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "2 day ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage3.png",
        likes: "1k",
        comments: "6",
        liked: false),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "33 minutes ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage4.png",
        likes: "1M",
        comments: "7k",
        liked: true),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "2 hour ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage5.png",
        likes: "12k",
        comments: "256",
        liked: false),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "7 hour ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage6.png",
        likes: "24k",
        comments: "25",
        liked: true),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "33 minutes ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage7.png",
        likes: "1k",
        comments: "6",
        liked: false),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "1 week ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage8.png",
        likes: "1M",
        comments: "7k",
        liked: true),
    PostModel(
        logo: "asset/image/post/logo/profile.png",
        name: "StarBucks",
        time: "1 week ago",
        caption:
            "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
        image: "asset/image/post/image/postImage9.png",
        likes: "1M",
        comments: "7k",
        liked: true),
  ];

  List _shop = [];

  @override
  void initState() {
    super.initState();
    getShopsByMeter(100);
  }

  void getShopsByMeter(int meters) {
    List tempShop = [];
    for (ShopModel sm in _allShop) {
      if (sm.distance! <= meters) {
        tempShop.add(sm);
      }
    }
    tempShop.sort((a, b) => a.distance.compareTo(b.distance));
    setState(() {
      _shop = tempShop;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: !isTapping? Text(
          "Snooptale",
          style: GoogleFonts.leckerliOne(
            color: Colors.black,
            fontSize: area * (24 / 17),
          ),
        ):SearchBar(input: input),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.04),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTapping = !isTapping;
                     }
                   );
                  },
                  child: !isTapping? Icon(
                    Icons.search_rounded,
                    size: area * (26 / 17),
                    color: Colors.black,
                  ):
                  Icon(
                    Icons.close,
                    size: area * (26 / 17),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: area,
                    width: area * (16 / 17),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/icon/viewBox.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: area * (0)),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _shop.length,
                  itemBuilder: (context, index) {
                    return NearShop(
                      shopModel: _shop[index],
                    );
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "100",
                style: TextStyle(
                  fontSize: area * (12 / 17),
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.82,
                child: Slider(
                  value: _initValue.toDouble(),
                  min: 100.0,
                  max: 400.0,
                  divisions: 9,
                  label: "${_initValue.round().toString()}",
                  activeColor: const Color.fromARGB(255, 117, 99, 177),
                  inactiveColor: const Color.fromARGB(255, 130, 208, 252),
                  onChanged: (double newValue) {
                    setState(() {
                      _initValue = newValue.round();
                      getShopsByMeter(_initValue);
                      print(_initValue);
                    });
                  },
                ),
              ),
              Text(
                "500",
                style: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                    fontSize: area * (12 / 17)),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: _post.length,
                  itemBuilder: (context, index) {
                    return Post(
                      postModel: _post[index],
                    );
                  },
                ),
                Positioned(
                  right: area * (30 / 17),
                  bottom: area * (60 / 17),
                  child: Container(
                    height: area * (60 / 17),
                    width: area * (60 / 17),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 117, 99, 177),
                        borderRadius: BorderRadius.circular(
                          12.0,
                        )),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Photo()),
                          );
                        },
                        child: Icon(
                          Icons.chat_bubble_outline,
                          size: area * (27 / 17),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
