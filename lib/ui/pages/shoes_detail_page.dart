part of 'pages.dart';

class ShoesDetailPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Transaction transaction;
  int nim;
  ShoesDetailPage({this.onBackButtonPressed, this.transaction, this.nim});
  @override
  _ShoesDetailPageState createState() => _ShoesDetailPageState();
}

class _ShoesDetailPageState extends State<ShoesDetailPage> {
  int quantity = 1;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.transaction.shoe.picturePath),
                    fit: BoxFit.cover)),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  // back button
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackButtonPressed != null) {
                            widget.onBackButtonPressed();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(3),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12),
                          child:
                              Image.asset("assets/icon/back_arrow_white.png"),
                        ),
                      ),
                    ),
                  ),
                  // Body
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      134, //32+102
                                  child: Text(widget.transaction.shoe.name,
                                      style: labelStyle),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                RatingStars(widget.transaction.shoe.rate)
                              ],
                            ),
                            // button incrementdan decrement
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = max(1, quantity - 1);
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        color: mainColor,
                                        borderRadius: BorderRadius.circular(8),
                                        // border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/btn_min.png"))),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                    quantity.toString(),
                                    textAlign: TextAlign.center,
                                    style: labelStyle,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = min(999, quantity + 1);
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        // border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/btn_add.png"))),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                          child: Text(
                            widget.transaction.shoe.description,
                            style: greyFontStyle.copyWith(fontSize: 14),
                          ),
                        ),
                        Text(
                          'Type',
                          style: labelStyle,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                          child: Text(
                            widget.transaction.shoe.type,
                            style: greyFontStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Price:',
                                  style: greyFontStyle.copyWith(fontSize: 13),
                                ),
                                Text(
                                    NumberFormat.currency(
                                            locale: 'id-ID',
                                            symbol: 'IDR',
                                            decimalDigits: 0)
                                        .format(
                                      quantity * widget.transaction.shoe.price,
                                    ),
                                    style: labelStyle.copyWith(fontSize: 18)),
                              ],
                            ),
                            Container(
                              width: 163,
                              height: 45,
                              child: RaisedButton(
                                onPressed: () {},
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                color: mainColor,
                                child: Text(
                                  'Order Now',
                                  style: labelButtonStyle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
