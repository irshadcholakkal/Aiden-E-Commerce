// import 'package:aiden/model/fav_model.dart';
// import 'package:flutter/material.dart';

// ValueNotifier<List<FavModel>> likedListNotify = ValueNotifier([]);

// class FavPage extends StatelessWidget {
//   const FavPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: ListView.builder(
//                   itemCount: likedListNotify.value.length,
//                   itemBuilder: (context, index) => Container(
//                     child: ListTile(
//                       leading: Image.network(likedListNotify.value[index].image),
//                       // leading: Text('data'),
//                       // title: Text("data"),
//                       title:
//                           Text("${likedListNotify.value[index].productNmae}"),
//                       // subtitle: Text("data")
//                       subtitle:
//                           Text("${likedListNotify.value[index].discreption}"),
//                     ),
//                   ),
//                 ) ??
//                 Center(
//                   child: Text("no data"),
//                 )));
//   }
// }
import 'package:aiden/model/fav_model.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
ValueNotifier<List<FavModel>> likedListNotify = ValueNotifier([]);

class  FavPage extends StatelessWidget {
  const  FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
                    "Favourites",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: black,
                    ),
                  ),
                  centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
            // width:100,
            height: MediaQuery.of(context).size.height*0.87,
        
            child: ListView.builder(
                  itemCount: likedListNotify.value.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Image.network(likedListNotify.value[index].image),
                    // leading: Text('data'),
                    // title: Text("data"),
                    title:
                        Text("${likedListNotify.value[index].productNmae}"),
                    // subtitle: Text("data")
                    subtitle:
                        Text("${likedListNotify.value[index].discreption}"),
                  ),
                ) ??
                Center(
                  child: Text("no data"),
                ))
              
              
              ],
          ),
        ),
      ),
    );
  }
}