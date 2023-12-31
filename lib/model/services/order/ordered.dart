import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/model/services/order/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
  final Control controller = Get.put(Control());

// Function to store Google signed user name and email in Firestore
Future<void> storeOrdeData({required ordername,required orderdescrption,required orderphoto , required orderPrice}) async {
  // Check if the user is signed in
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Get user data
    String orderName = ordername ?? "";
    String orderDescription = orderdescrption ?? "";
    String order = orderphoto ?? "";
    int orderPrices =orderPrice?? "";


    // Get a reference to the Firestore database
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a document reference in the 'users' collection with the user's UID
    DocumentReference userRef = firestore.collection('User').doc(user.uid).collection('Order').doc(orderName);

    // Set the user data in the document
    try {
      await userRef.set({
        'orderName': orderName,
        'orderDescription': orderDescription,
        'orderPhoto': order,
        'orderPrice':orderPrices,
      });

      print('order data stored successfully in Firestore!');
    } catch (error) {
      print('Error storing order data: $error');
    }
  } else {
    print('order is not signed in.');
  }
}






   getOrderData() async {
          print("========================================callll-------------------------------------------------");

  // Check if the user is signed in
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Get a reference to the Firestore database
    FirebaseFirestore firestore = FirebaseFirestore.instance;
print("///////////////////////////////////////////////");
    // Create a reference to the collection containing all products
    CollectionReference productsCollection = firestore.collection('User').doc(user.uid).collection('order');
 
     try {
    QuerySnapshot productsSnapshot = await productsCollection.get();
          print("========================================callll-------------------------------------------------");

    if (productsSnapshot.size > 0) {
      controller.orderData.assignAll(productsSnapshot.docs.map(
        (doc) =>  OrderData(
            orderName: doc['orderName'],
            orderDescription: doc['orderDescription'],
            orderimageUrl: doc['orderPhoto'],
            orderPrice : doc['orderPrice']
          )
      ).toList());
      print("========================================callll-------------------------------------------------");
    } else {
      print('No products found in the collection.');
    }
  } catch (error) {
    print('Error retrieving product data: $error');
  }
  
  
  } else {
    print('User is not signed in.');
  }
}

Future<void>deleteOrder(name)async{
    User? user = FirebaseAuth.instance.currentUser;
if (user != null) {
   FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a document reference in the 'users' collection with the user's UID
    Future<void> userRef = firestore.collection('User').doc(user.uid).collection('order').doc(name).delete()
//     .delete() // <-- Delete
    .then((_) => print('Deleted'));
//     .catchError((error) => print('Delete failed: $error'));
 }
  

}

Future<void> deleteAllOrder() async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a reference to the 'order' collection
    CollectionReference orderCollection = firestore.collection('User').doc(user.uid).collection('order');

    // Get all documents within the 'order' collection
    QuerySnapshot orderDocuments = await orderCollection.get();

    // Iterate through the documents and delete each one
    for (QueryDocumentSnapshot document in orderDocuments.docs) {
      await document.reference.delete();
    }

    print('Deleted All Items in order');
  }
}
