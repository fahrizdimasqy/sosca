part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Yeay! Completed',
        subtitle: 'Now you are able to order\nsome shoes as a self-reward',
        picturePath: 'assets/images/food_whises.png',
        buttonTap1: () {},
        buttonTitle1: 'Find Shoes',
      ),
    );
  }
}
