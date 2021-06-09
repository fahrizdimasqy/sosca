part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  CustomBottomNavbar({this.selectedIndex = 0, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: "FFFFFF".toColor(),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon/ic_home" +
                        ((selectedIndex == 0) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 83),
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon/ic_order" +
                        ((selectedIndex == 1) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon/ic_profile" +
                        ((selectedIndex == 2) ? '.png' : '_normal.png'),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
