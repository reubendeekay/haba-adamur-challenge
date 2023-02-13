class CryptoModel {
  final String? image;
  final int? imageBackground;
  final bool? isRising;
  final String? rate;
  final String? title;
  final String? amount;

  CryptoModel(
      {this.image,
      this.imageBackground,
      this.isRising,
      this.rate,
      this.title,
      this.amount});

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
        image: json['image'],
        imageBackground: json['imageBackground'],
        isRising: json['isRising'],
        rate: json['rate'],
        title: json['title'],
        amount: json['amount']);
  }
}
