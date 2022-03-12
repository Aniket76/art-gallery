import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/profile_page/profile_page_screens/exibitions.dart';
import 'package:flutter_gallery_app/profile_page/profile_page_screens/revenue.dart';
import 'package:flutter_gallery_app/profile_page/profile_page_screens/uploads.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  bool _switchValue = true;
  late ScrollController _scrollController;
  late TabController _tabController;

  late List<Widget> myTabs;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: 3, vsync: this);
    myTabs = [
      tabList("assets/list_icon/upload_black.png", "Uploads"),
      tabList("assets/list_icon/image.png", "Exhibitions"),
      tabList("assets/list_icon/revenue.png", "Revenue"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(child: Column(
              children: [
                _profile(),
                _dashboard(),
                dividerLine(context),
                _followers(),
                dividerLine(context),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _likeShareList("assets/list_icon/heart.png",
                          const Color.fromRGBO(255, 0, 0, 0.80), " 2.3K"),
                      _likeShareList("assets/list_icon/follow.png",
                          const Color.fromRGBO(0, 125, 178, 0.80), " 2.3K"),
                      _likeShareList("assets/list_icon/share.png",
                          const Color.fromRGBO(0, 125, 178, 0.80), " 2.3K"),
                    ],
                  ),
                ),
                pallate(),
              ],
            ),
            ),
            SliverToBoxAdapter(
              child: TabBar (
                controller: _tabController,
                labelColor: Colors.black,
                indicatorColor: const Color.fromRGBO(255, 181, 0, 1),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: myTabs,
              ),
            ),
          ];
        },
        body: Container(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Uploads(),
              Exibitions(),
              Revenue(),
            ],
          ),
        ),
      ),
    );
  }

  tabList(String image, String title) {
    return Tab(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  pallate() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _colorbook(const Color.fromRGBO(95, 14, 71, 1)),
              _colorbook(const Color.fromRGBO(158, 0, 61, 1)),
              _colorbook(const Color.fromRGBO(217, 0, 52, 1)),
              _colorbook(const Color.fromRGBO(255, 69, 24, 1)),
              _colorbook(const Color.fromRGBO(255, 194, 0, 1)),
            ],
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
            child: const Text(
              "pallette",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10
              ),
            ),
          ),
        ],
      ),
    );
  }

  _colorbook(Color color) {
    return Container(
      color: color,
      height: 35,
      width: MediaQuery.of(context).size.width * 0.15,
    );
  }

  _likeShareList(String image, Color color, String count) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Text(
            count,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  _followers() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _countList("23K", "Followers"),
          _countList("50", "Artworks"),
          _countList("21", "Exhibitions"),
        ],
      ),
    );
  }

  _countList(String number, String title) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  _dashboard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("My dashboard"),
          Switch(
            activeTrackColor: Colors.green,
            activeColor: Colors.white,
            activeThumbImage: const AssetImage('assets/list_icon/thumb_icon.png'),
            inactiveThumbImage: const AssetImage('assets/list_icon/thumb_icon.png'),
            inactiveTrackColor: Colors.grey,
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  _profile() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/list_icon/upload.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "Upload",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(89, 125, 223, 1),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 130,
              width: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/list_icon/profile.png"),
                ),
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/list_icon/edit.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(89, 125, 223, 1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Text(
          "john.doe",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.32,
          ),
        )
      ],
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      title: Container(
        height: 30,
        width: 90,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/small_logo.png"),
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: const [
              Icon(
                Icons.circle,
                color: Colors.red,
                size: 38,
              ),
              Icon(
                Icons.person_outline,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        )
      ],
    );
  }

  dividerLine(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.90,
        child: const Divider(
          thickness: 2,
        ),
      ),
    );
  }
}
