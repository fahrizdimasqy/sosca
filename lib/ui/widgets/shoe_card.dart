part of 'widgets.dart';

class ShoesCard extends StatelessWidget {
  final Shoes shoes;
  ShoesCard(this.shoes);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 223,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 136,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(shoes.picturePath),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 122.7,
                left: 12,
                child: Container(
                  height: 25,
                  width: 86,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF).withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                    child: Text(
                      shoes.type,
                      style: TextStyle(color: darkBlue),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 120,
            child: Text(
              shoes.name,
              style: labelStyle,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: RatingStars(shoes.rate),
          )
        ],
      ),
    );
  }
}
