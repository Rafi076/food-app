import 'package:cloud_firestore/cloud_firestore.dart';

class FirstoreService {
  // get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');


      // save oreder to db
      Future<void> saveOrderToDatabase(String recipt) async{
        await orders.add({
          'date': DateTime.now(),
          'order':recipt,

          // add more field as necessary...
        });
      }
}
