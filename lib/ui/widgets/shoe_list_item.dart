part of 'widgets.dart';

class ShoeListItem extends StatelessWidget {
  final Shoes shoe;
  final double itemWidth;
  ShoeListItem({@required this.shoe, this.itemWidth});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(shoe.picturePath), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoe.name,
                style: labelStyle,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                        symbol: 'IDR ', decimalDigits: 0, locale: 'id-ID')
                    .format(shoe.price),
                style: greyFontStyle.copyWith(fontSize: 13, color: darkBlue),
              )
            ],
          ),
        ),
        RatingStars(shoe.rate)
      ],
    );
  }
}
