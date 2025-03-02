class BookEntites {
  final String bookId;
  final String title;
  final String? imageUrl;
  final String? autherName;
  final num? price;
  final num? rate;

  BookEntites(
      {required this.bookId,
      required this.title,
      required this.imageUrl,
      required this.autherName,
      required this.price,
      required this.rate});
}
