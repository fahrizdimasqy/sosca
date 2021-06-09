part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  // variabel
  final int id;
  final Shoes shoe;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

// constructor
  Transaction(
      {this.id,
      this.shoe,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});

  // method
  // method ini untuk mengkopi transaction
  Transaction copyWith(
      {int id,
      Shoes shoe,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status,
      User user}) {
    return Transaction(
      id: id ?? this.id,
      shoe: shoe ?? this.shoe,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object> get props => [id, shoe, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      shoe: mockShoes[1],
      quantity: 2,
      total: (mockShoes[1].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      shoe: mockShoes[2],
      quantity: 3,
      total: (mockShoes[2].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 3,
      shoe: mockShoes[3],
      quantity: 5,
      total: (mockShoes[3].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser),
];
