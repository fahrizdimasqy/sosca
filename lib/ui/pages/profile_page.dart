part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.only(top: 26),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icon/photo_border.png"))),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/icon/profile_img.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Text('Fahri Dimasqy', style: titleStyle),
              Text(
                'dimasqy.fahriz@gmail.com',
                style: greyFontStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          width: double.infinity,
          child: Column(
            children: [
              CustomTabBar(
                titles: ['Account', 'ShoeMarket'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  (selectedIndex == 0
                      ? Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Edit Profile'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Home Address'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Security'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Payments'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Rate App'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Help Center'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Privacy & Policy'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Term & Conditions'),
                                  IconButton(
                                      icon: Icon(Icons.arrow_right),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ],
                        ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
