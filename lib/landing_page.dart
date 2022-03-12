import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/profile_page/profile_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/main_logo.png"),
                  ),
                ),
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/front_img.png"),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: -0.6,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(0, 0, 0, 0.40),
                    ),
                  ),
                ),
              ),
              _registerButton(context),
              spaceMaker(),
              _trackMyApplication(),
              spaceMaker(),
              _description("assets/list_icon/icon1.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              _description("assets/list_icon/icon2.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco."),
              _description("assets/list_icon/icon3.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              _description("assets/list_icon/icon4.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              _description("assets/list_icon/icon5.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              _description("assets/list_icon/icon6.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
              _description("assets/list_icon/icon7.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              _description("assets/list_icon/icon8.png", "lorem ipsumis used",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
              _socialMediaIcon(),
              dividerLine(context),
              _footer(),
              dividerLine(context),
              _copyRight(),
              spaceMaker(),
            ],
          ),
        ),
      ),
    );
  }
}

_trackMyApplication() {
  return InkWell(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.arrow_forward,
          color: Color.fromRGBO(87, 123, 223, 0.40),
          size: 23,
        ),
        Text(
          " track my application",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(87, 123, 223, 0.80),
          ),
        ),
      ],
    ),
  );
}

_description(String imagePath, String title, String description) {
  return Padding(
    padding: const EdgeInsets.only(left: 40, right: 30, bottom: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
        ),
        const SizedBox(height: 16,),
        Container(
          padding: const EdgeInsets.only(bottom: 24),
          width: 180,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(0, 0, 0, 0.49),
          ),
        ),
      ],
    ),
  );
}

_registerButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(9.0),
            ),
          ),
          width: 120,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_forward,
                color: Colors.white60,
                size: 23,
              ),
              Text(
                " register",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      const Text(
        "  me as a collector",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.17,
          color: Color.fromRGBO(0, 0, 0, 0.60),
        ),
      )
    ],
  );
}

_socialMediaIcon() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/social_media/facebook.png"),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/social_media/insta.png"),
            ),
          ),
        ),
      ],
    ),
  );
}

_footer() {
  return Column(
    children: [
      Container(
        height: 80,
        width: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/straight_logo.png"),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                footerText("About Us."),
                footerText("Team."),
                footerText("Reach us."),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                footerText("Affiliattions."),
                footerText("Disclaimers."),
                footerText("Privacy Policy."),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

footerText(String title) {
  return SizedBox(
    height: 50,
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

_copyRight() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(Icons.copyright, color: Colors.black38, size: 24.0),
      Text(
        " Content Copyright reserved.",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
    ],
  );
}

dividerLine(BuildContext context) {
  return Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: const Divider(
        thickness: 2,
      ),
    ),
  );
}

spaceMaker() {
  return const SizedBox(height: 40);
}
