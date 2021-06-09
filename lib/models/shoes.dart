part of 'models.dart';

class Shoes extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String type;
  final int price;
  final double rate;

  Shoes(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.type,
      this.price,
      this.rate});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, type, price, rate];
}

List<Shoes> mockShoes = [
  Shoes(
    id: 1,
    picturePath: "assets/images/shoes1.jpg",
    name: "Niki terbaru",
    description:
        "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
    type: "Nike",
    price: 250000,
    rate: 4.2,
  ),
  Shoes(
    id: 2,
    picturePath: "assets/images/shoes1.jpg",
    name: "Niki terbaru",
    description:
        "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
    type: "Nike",
    price: 250000,
    rate: 4.2,
  ),
  Shoes(
    id: 3,
    picturePath: "assets/images/shoes1.jpg",
    name: "Niki terbaru",
    description:
        "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
    type: "Nike",
    price: 250000,
    rate: 4.2,
  ),
  Shoes(
    id: 4,
    picturePath: "assets/images/shoes1.jpg",
    name: "Niki terbaru",
    description:
        "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
    type: "Nike",
    price: 250000,
    rate: 4.2,
  ),
  Shoes(
    id: 5,
    picturePath: "assets/images/shoes1.jpg",
    name: "Niki terbaru",
    description:
        "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
    type: "Nike",
    price: 250000,
    rate: 4.2,
  ),
];
