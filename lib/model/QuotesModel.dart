import 'dart:developer';

class QuotesModel {
  int? id;
  String? quotes;
  String? image;
  String? author;

  QuotesModel(
    this.id,
    this.quotes,
    this.image,
    this.author,
  );

  QuotesModel.init() {
    log("Empty transaction initialized...");
  }

  factory QuotesModel.fromMap({required Map data}) {
    return QuotesModel(
      data['Id'],
      data['Quotes'],
      data['Images'],
      data['Author'],
    );
  }
}
