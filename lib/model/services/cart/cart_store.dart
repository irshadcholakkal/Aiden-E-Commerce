import 'package:aiden/model/getx_controller.dart';
import 'package:aiden/model/services/cart/cart_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
  final Control controller = Get.put(Control());

// Function to store Google signed user name and email in Firestore
Future<void> storeCartData({required cartname,required cartdescrption,required cartphoto , required cartPrice}) async {
  // Check if the user is signed in
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Get user data
    String cartName = cartname ?? "";
    String cartDescription = cartdescrption ?? "";
    String cart = cartphoto ?? "";
    int cartPrices =cartPrice??"";


    // Get a reference to the Firestore database
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a document reference in the 'users' collection with the user's UID
    DocumentReference userRef = firestore.collection('User').doc(user.uid).collection('Cart').doc(cartName);

    // Set the user data in the document
    try {
      await userRef.set({
        'cartName': cartName,
        'cartDescription': cartDescription,
        'cartPhoto': cart,
        'cartPrice':cartPrices,
      });

      print('Cart data stored successfully in Firestore!');
    } catch (error) {
      print('Error storing Cart data: $error');
    }
  } else {
    print('Cart is not signed in.');
  }
}




//  Future<void> getCartData() async {
//     // Check if the user is signed in
//     User? user = FirebaseAuth.instance.currentUser;

//     if (user != null) {
//       try {
//         // Get a reference to the Firestore database
//         FirebaseFirestore firestore = FirebaseFirestore.instance;

//         // Get the user document from the 'User' collection (make sure it matches your collection name)
//         DocumentSnapshot userSnapshot =
//             await firestore.collection('User').doc(user.uid).collection('Cart').doc().get();

//         // Check if the document exists
//         if (userSnapshot.exists) {
//           // Extract data from the document
//           Map<String, dynamic> userDataMap =
//               userSnapshot.data() as Map<String, dynamic>;

//           // Create a User object
//           CartData fetchedCart = CartData(
//             cartName: userDataMap['cartName'],
//             cartDescription: userDataMap['cartDescription'],
//             cartimageUrl: userDataMap['cartPhoto'],
//             cartPrice : userDataMap['cartPrice']
//           );

//           controller.cartData.value = fetchedCart as List<CartData?>;
//         } else {
//           print('Cart document does not exist in Firestore.');
//         }
//       } catch (error) {
//         print('Error retrieving Cart data: $error');
//       }
//     } else {
//       print('Cart is not signed in.');
//     }
//   }


   getCartData() async {
          print("========================================callll-------------------------------------------------");

  // Check if the user is signed in
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Get a reference to the Firestore database
    FirebaseFirestore firestore = FirebaseFirestore.instance;
print("///////////////////////////////////////////////");
    // Create a reference to the collection containing all products
    CollectionReference productsCollection = firestore.collection('User').doc(user.uid).collection('Cart');
 
     try {
    QuerySnapshot productsSnapshot = await productsCollection.get();
          print("========================================callll-------------------------------------------------");

    if (productsSnapshot.size > 0) {
      controller.cartData.assignAll(productsSnapshot.docs.map(
        (doc) =>  CartData(
            cartName: doc['cartName'],
            cartDescription: doc['cartDescription'],
            cartimageUrl: doc['cartPhoto'],
            cartPrice : doc['cartPrice']
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

Future<void>deleteCart(name)async{
    User? user = FirebaseAuth.instance.currentUser;
if (user != null) {
   FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a document reference in the 'users' collection with the user's UID
    Future<void> userRef = firestore.collection('User').doc(user.uid).collection('Cart').doc(name).delete()
//     .delete() // <-- Delete
    .then((_) => print('Deleted'));
//     .catchError((error) => print('Delete failed: $error'));
 }
 

}

Future<void> deleteAllCart() async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a reference to the 'Cart' collection
    CollectionReference cartCollection = firestore.collection('User').doc(user.uid).collection('Cart');

    // Get all documents within the 'Cart' collection
    QuerySnapshot cartDocuments = await cartCollection.get();

    // Iterate through the documents and delete each one
    for (QueryDocumentSnapshot document in cartDocuments.docs) {
      await document.reference.delete();
    }

    print('Deleted All Items in Cart');
  }
}
