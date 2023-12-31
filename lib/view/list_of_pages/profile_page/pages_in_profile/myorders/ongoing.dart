import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Ongoing(BuildContext context) {
      var screensize = MediaQuery.of(context).size;

  return Column(
    children: [
      // const SizedBox(
      //   height: 20,
      // ),
      Expanded(
        child: ListView.builder(
           itemCount: 2,
          itemBuilder: (BuildContext context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              height: screensize.height*0.15,
              
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 236, 236, 236),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(7, 5)),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/prod.jpg",
                          
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nike shoe",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                             
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "₹120",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
         
        ),
      ),
    ],
  );
}
