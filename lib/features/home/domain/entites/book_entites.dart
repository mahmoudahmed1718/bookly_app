import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class BookEntites {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? imageUrl;
  @HiveField(3)
  final String? autherName;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rate;

  BookEntites(
      {required this.bookId,
      required this.title,
      required this.imageUrl,
      required this.autherName,
      required this.price,
      required this.rate});
}
