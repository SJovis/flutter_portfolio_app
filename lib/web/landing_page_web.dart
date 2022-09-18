import 'package:flutter/material.dart';
import 'package:portfolio_app/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(flex: 10),
            TabsWeb('Home'),
            Spacer(),
            TabsWeb('Works'),
            Spacer(),
            TabsWeb('Blog'),
            Spacer(),
            TabsWeb('About'),
            Spacer(),
            TabsWeb('Contact'),
          ],
        ),
      ),
      body: ListView(
        children: [
          // FIRST PAGE
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: SansBold("Hello, I'm", 15),
                    ),
                    SizedBox(height: 15),
                    SansBold("Sergio Jovis", 55.0),
                    SizedBox(height: 5),
                    Sans("Front-End Developer", 30.0),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10),
                        Sans("jovis.sergio@gmail.com", 15.0)
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 10),
                        Sans("Lisbon, Portugal", 15.0)
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 149,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage('assets/photo.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SECOND PAGE
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('web.jpg', width: widthDevice / 2.1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(height: 15),
                    Sans(
                        "Pellentesque sed tristique dolor, non consequat nibh.",
                        15),
                    Sans(
                        "Mauris ac lacinia nulla. Nullam efficitur pulvinar placerat.",
                        15),
                    Sans("Duis vestibulum nisi tristique sapien mollis tempor.",
                        15),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Flutter", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Firebase", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Android", 15),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("iOS", 15),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Windows", 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // THIRD PAGE
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10),
                            SansBold("Web development", 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10),
                            SansBold("App development", 15),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(height: 10),
                            SansBold("Back-end development", 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // FORTH PAGE
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            heading: "First name",
                            width: 350,
                            hintText: "Please type your first name"),
                        SizedBox(height: 15),
                        TextForm(
                            heading: "Email",
                            width: 350,
                            hintText: "Please enter your email address"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            heading: "Last name",
                            width: 350,
                            hintText: "Please type your last name"),
                        SizedBox(height: 15),
                        TextForm(
                            heading: "Phone number",
                            width: 350,
                            hintText: "Please type your phone number"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                    heading: "Message",
                    width: widthDevice / 1.4,
                    hintText: "Please type your message",
                    maxLine: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
