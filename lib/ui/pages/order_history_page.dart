part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  List<Transaction> inProgress = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.delivered ||
          element.status == TransactionStatus.cancelled)
      .toList();

  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IllustrationPage(
        title: "Ouch! Need Shoe?",
        subtitle: "Seems like you have not\nordered any shoe yet",
        picturePath: 'assets/icon/love_burger.png',
        buttonTap1: () {},
        buttonTitle1: 'Find Shoes',
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              // header
              Container(
                height: 100,
                width: double.infinity,
                margin:
                    EdgeInsets.only(top: defaultMargin, bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Your Orders', style: titleStyle),
                    Text('Wait for the best shoe', style: greyFontStyle),
                  ],
                ),
              ),
              // body
              Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTabBar(
                        titles: ["In Progress", "Past Order"],
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
                        children: (selectedIndex == 0 ? inProgress : past)
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(
                                      right: defaultMargin,
                                      left: defaultMargin,
                                      bottom: 16),
                                  child: OrderListItem(
                                    transaction: e,
                                    itemWidth: listItemWidth,
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  ))
            ],
          )
        ],
      );
    }
  }
}
