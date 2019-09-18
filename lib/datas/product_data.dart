import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData{
  String id;
  String title;
  String description;
  double price;
  List images;
  List Sizes;
  String Category;
  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID ;
    title=snapshot.data["title"];
    price=snapshot.data["price"]+0.0;
    images=snapshot.data["images"];
    Sizes=snapshot.data["tamanho"];
    description=snapshot.data["description"];

  }
}


