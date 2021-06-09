part of 'pages.dart';

class ShoePage extends StatefulWidget {
  @override
  _ShoePageState createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    TextEditingController searchController = TextEditingController();
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Market',
                        style: titleStyle,
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Let’s get some shoes',
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage("assets/icon/profile_img.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: lightGrey,
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: greyFontStyle,
                      hintText: "Search Shoes"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockShoes
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left: (e == mockShoes.first)
                                      ? defaultMargin
                                      : 0,
                                  right: 12),
                              child: ShoesCard(e),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ["New Product", "Popular", "Recomended"],
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
                  Builder(builder: (_) {
                    List<Shoes> shoes = (selectedIndex == 0
                        ? mockShoes
                        : (selectedIndex == 1)
                            ? []
                            : []);
                    return Column(
                      children: shoes
                          .map((e) => Padding(
                                padding: EdgeInsets.fromLTRB(
                                    defaultMargin, 0, defaultMargin, 16),
                                child: ShoeListItem(
                                  shoe: e,
                                  itemWidth: listItemWidth,
                                ),
                              ))
                          .toList(),
                    );
                  }),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Container(),
          ],
        )
      ],
    );
  }
}
