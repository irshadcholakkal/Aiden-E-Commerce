// import 'dart:convert';

// import 'package:aiden/model/product_models/list_of_product_model.dart';
// import 'package:http/http.dart' as http;

// String category = "smartphones";

// Future<ProductModel> fechfake() async {
//   // const api = "https://dummyjson.com/products";
//   final api = "https://dummyjson.com/products/category/$category";
//   final uri = Uri.parse(api);
//   final response = await http.get(uri);
//   final body = jsonDecode(response.body);

//   // final Map<String, dynamic> json = {"position": body};
//   print(json);
//   if (response.statusCode == 200) {
//     return ProductModel.fromJson(body);
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
