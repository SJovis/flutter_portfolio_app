import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                ),
                child: Image.asset('../../assets/photoCircle.png'),
              ),
            ),
            SizedBox(height: 10.0),
            TabsMobile(text: 'Home', route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Works', route: '/works'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Blog', route: '/blog'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'About', route: '/about'),
            SizedBox(height: 20.0),
            TabsMobile(text: 'Contact', route: '/contact'),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.instagram.com/1jovis')),
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.twitter.com/jovis')),
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.github.com/sjovis')),
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          //  INTRO, FIRST SECTION
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/photoCircle.png'),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold("Hello, I'm", 15.0),
                    ),
                    SansBold('Sergio Jovis', 40.0),
                    Sans('Flutter Developer', 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 10.0,
                      children: [
                        Sans('jovis.sergio@gmail.com', 15.0),
                        Sans('Lisbon, Portugal', 15.0),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 120.0),
          // ABOUT, SECOND SECTION
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold('About me', 35.0),
                SizedBox(height: 15.0),
                Sans("Sed gravida, purus vel faucibus feugiat, tortor velit.",
                    15.0),
                Sans(
                    "Eget viverra odio augue in libero. Sed ac eleifend lectus.",
                    15.0),
                Sans(
                    "Mauris at auctor est. Mauris viverra et eros sit amet ullamcorper.",
                    15.0),
                SizedBox(height: 20.0),
                Wrap(
                  spacing: 15.0,
                  runSpacing: 7.0,
                  children: [
                    tealContainer('Flutter'),
                    tealContainer('Firebase'),
                    tealContainer('Android'),
                    tealContainer('Windows'),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 120.0),
          // CARDS, THIRD SECTION
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do", 35.0),
              SizedBox(height: 30.0),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App Development",
                fit: BoxFit.contain,
                reverse: true,
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end Development",
                width: 300.0,
              ),
            ],
          ),
          SizedBox(height: 120.0),
          // CONTACT, FORTH SECTION
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SansBold("Contact me", 35.0),
              SizedBox(height: 20.0),
              TextForm(
                  heading: "First Name",
                  width: widthDevice / 1.4,
                  hintText: "Please type first name"),
              SizedBox(height: 15.0),
              TextForm(
                  heading: "Last Name",
                  width: widthDevice / 1.4,
                  hintText: "Please type last name"),
              SizedBox(height: 15.0),
              TextForm(
                  heading: "Email",
                  width: widthDevice / 1.4,
                  hintText: "Please type email address"),
              SizedBox(height: 15.0),
              TextForm(
                  heading: "Phone number",
                  width: widthDevice / 1.4,
                  hintText: "Please type your phone number"),
              SizedBox(height: 15.0),
              TextForm(
                  heading: "Message",
                  width: widthDevice / 1.4,
                  hintText: "Message",
                  maxLines: 10),
              SizedBox(height: 15.0),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 1.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
