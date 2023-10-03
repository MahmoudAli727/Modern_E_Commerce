import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_1/Feature/Home/data/model/model.dart';

class Store {
  final CollectionReference _firestoreG =
      FirebaseFirestore.instance.collection("groub");

  final CollectionReference _firestoreW =
      FirebaseFirestore.instance.collection("wishlist");

  addProductG(NewArraival product) {
    _firestoreG.add({
      "desc": product.description,
      "imagePath": product.imagePath,
      "price": product.price,
    });
  }

  addProductW(NewArraival product) {
    _firestoreW.add({
      "desc": product.description,
      "imagePath": product.imagePath,
      "price": product.price,
    });
  }

  deleteProductG(documentId) {
    _firestoreG.doc(documentId).delete();
  }

  deleteProductW(documentId) {
    _firestoreW.doc(documentId).delete();
  }

  editProductG(NewArraival data, documentId) {
    _firestoreG.doc(documentId).update({
      "desc": data.description,
      "imagePath": data.imagePath,
      "price": data.price,
    });
  }
}
