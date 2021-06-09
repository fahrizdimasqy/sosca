part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;
  PaymentPage({this.transaction});
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Payment",
      subtitle: "You deserve better meal",
      backColor: 'FAFAFC'.toColor(),
      onBackbuttonPressed: () {},
      child: Column(
        children: [
          // Bagian atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: labelStyle2.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image:
                                      AssetImage(transaction.shoe.picturePath),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 189,
                              // 2 * defaultMargin + (jarak border)
                              // 60 - (lebar gambar)
                              // 12 - (jark gambar ke tulisan)
                              // 78, (lebar jumlah item)
                              child: Text(
                                transaction.shoe.name,
                                style: labelStyle,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR',
                                        decimalDigits: 0)
                                    .format(
                                  transaction.shoe.price,
                                ),
                                style: greyFontStyle.copyWith(fontSize: 13))
                          ],
                        ),
                      ],
                    ),
                    Text('${transaction.quantity} item(s)',
                        style: greyFontStyle.copyWith(fontSize: 13)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Details Transaction', style: labelStyle2),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child:
                            Text(transaction.shoe.name, style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: "IDR",
                                  decimalDigits: 0)
                              .format(transaction.quantity *
                                  transaction.shoe.price),
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Driver", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: "IDR",
                                  decimalDigits: 0)
                              .format(50000),
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Tax 10%", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: "IDR",
                                  decimalDigits: 0)
                              .format(transaction.quantity *
                                  transaction.shoe.price *
                                  0.1),
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Total Price", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: "IDR",
                                  decimalDigits: 0)
                              .format(transaction.shoe.price *
                                      transaction.quantity *
                                      1.1 +
                                  50000),
                          style: labelStyle2.copyWith(color: mainColor),
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
              ],
            ),
          ),
          // Bagian Bawah
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text('Delivery To', style: labelStyle2),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          "Name",
                          style: greyFontStyle,
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.user.name,
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Driver", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: "IDR",
                                  decimalDigits: 0)
                              .format(50000),
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Phone No", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.user.phoneNumber,
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("Address", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.user.address,
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("House No", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.user.houseNumber,
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text("City", style: greyFontStyle)),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.user.city,
                          style: labelStyle2,
                          textAlign: TextAlign.right,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24, bottom: 26),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: mainColor,
              child: Text(
                'Checkout Now',
                style: labelButtonStyle2.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
