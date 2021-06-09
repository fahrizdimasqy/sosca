part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;
  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'Fahriz Dimasqy',
  address: "Kp.Cempaka putih",
  houseNumber: '47',
  phoneNumber: "085312858608",
  city: 'Palabuhanratu',
  email: 'dimasqy@gmail.com',
  picturePath: "assets/images/shoes1.jpg",
);
