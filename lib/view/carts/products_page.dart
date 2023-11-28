import 'package:aiden/utils/colors.dart';
import 'package:aiden/utils/icons.dart';
import 'package:aiden/utils/images.dart';
import 'package:aiden/utils/texts.dart';
import 'package:aiden/utils/variables.dart';
import 'package:aiden/view/widgets/animated_button.dart';
import 'package:aiden/view/widgets/counter.dart';
import 'package:aiden/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentPage = 0;
  PageController controller = PageController();
  int indexOfSizes = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(checkScrollPosition);
  }

  void checkScrollPosition() {
    setState(() {
      if (_scrollController.hasClients &&
          _scrollController.position.maxScrollExtent > 4 &&
          _scrollController.position.minScrollExtent < 4) {
        if (_scrollController.position.pixels <=
            _scrollController.position.minScrollExtent) {}
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {}
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: backArrow),
        actions: [
          likeButton(),
          SizedBox(
            width: width! * 0.05,
          )
        ],
      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: hight! * 0.5,
            color: Colors.white,
            child: Stack(
              children: [
                SizedBox(
                  height: hight,
                  width: width,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: cartImages.length,
                    itemBuilder: (context, index) {
                      final Image images = cartImages[index];
                      return SizedBox(
                          height: hight, width: width, child: images);
                    },
                  ),
                ),
                Positioned(
                  top: hight! * 0.38,
                  left: width! * 0.38,
                  child: SizedBox(
                      height: hight! * 0.05,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: cartImages.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.grey.shade300,
                          dotColor: Colors.black54,
                          dotHeight: 7,
                          dotWidth: 10,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: hight! * 0.55,
              width: width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 251, 249, 249),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Container(
                margin: const EdgeInsets.all(17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                            ProductPageProductName,
                            ProductPageProutSubName,
                            Row(
                              children: [
                                ratingBar(rating: 3.5, minirating: 0, size: 15),
                                numberOfReviews
                              ],
                            ),
                            SizedBox(
                              height: hight! * 0.02,
                            ),
                            Text(
                              "Size",
                              style: GoogleFonts.rubik(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                       Counter()
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            height: hight! * 0.07,
                            width: width! * 0.63,
                            child: ListView.builder(
                              controller: _scrollController,
                              itemCount: dressSizes.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                indexOfSizes = index;
                                return Container(
                                    margin: const EdgeInsets.all(7),
                                    height: hight! * 0.2,
                                    width: width! * 0.12,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: grey),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                        child: Text(
                                      dressSizes[index],
                                      style: GoogleFonts.rubik(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )));
                              },
                            ),
                          ),
                          if (_scrollController.hasClients &&
                              _scrollController.position.pixels <
                                  _scrollController.position.maxScrollExtent)
                            const Icon(Icons.arrow_forward_ios_rounded, size: 13),
                          if (_scrollController.hasClients &&
                              _scrollController.position.pixels ==
                                  _scrollController.position.maxScrollExtent)
                            const Icon(Icons.arrow_back_ios_rounded, size: 13),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: hight! * 0.01,
                    // ),
                    Text(
                      "Description",
                      style: GoogleFonts.rubik(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                    
                      width: double.infinity,
                      height: hight!*0.15,
                      child: SingleChildScrollView(child:Description
                       ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: width!*0.3,
                            height: hight!*0.1,
                            
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price",style: GoogleFonts.rubik(fontSize: 10,fontWeight: FontWeight.w200),),
                                Price
                              ],
                            ) ,
                          ),
                         BouncingButton(onTap: (){})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
