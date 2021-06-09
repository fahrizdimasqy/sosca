// memberitahukan general page bagian dari pages;
part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackbuttonPressed;
  final Widget child;
  final Color backColor;
  GeneralPage(
      {this.title = "Title",
      this.subtitle = "Subtitle",
      this.onBackbuttonPressed,
      this.child,
      this.backColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
            child: Container(color: backColor ?? Colors.white),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        children: [
                          onBackbuttonPressed != null
                              ? GestureDetector(
                                  onTap: () {
                                    if (onBackbuttonPressed != null) {
                                      onBackbuttonPressed();
                                    }
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 26),
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon/back_arrow.png'))),
                                  ),
                                )
                              : SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subtitle,
                                style: greyFontStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                      color: "FAFAFC".toColor(),
                    ),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
