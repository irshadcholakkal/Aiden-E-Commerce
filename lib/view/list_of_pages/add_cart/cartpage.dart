import 'package:aiden/model/services/cart/cart_model.dart';
import 'package:aiden/model/services/cart/cart_store.dart';
import 'package:aiden/model/services/payment_service.dart';
import 'package:aiden/view/widgets/snack_bar.dart';
import 'package:aiden/viewmodel/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({
    super.key,
  });

  Future<void> _refresh() async {
    await getCartData();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    List data = [];

    return Scaffold(
      body: RefreshIndicator(
        color: white,
        backgroundColor: black,
        displacement: 200,
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        strokeWidth: 1,
        onRefresh: _refresh,
        child: SafeArea(
          child: Container(
            height: screensize.height,
            width: screensize.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My Cart",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: black,
                        ),
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
                Expanded(
                  child: Obx(() {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      // This code will be executed after the build is complete
                      controller.tt.value =
                          calculateTotalPrice(controller.cartData);
                    });

                    return controller.cartData.isEmpty
                        ? const Center(
                            child: Text(
                              "Your cart is empty",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: controller.cartData.length,
                            itemBuilder: (BuildContext context, index) {
                              CartData? cart = controller.cartData[index];
                              print(cart.cartName);
                              data = [cart.cartName];

                              print(controller.tt.value);

                              return Slidable(
                                key: ValueKey(controller.cartData[index]),
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  dismissible: DismissiblePane(
                                    onDismissed: () {
                                      deleteCart(
                                          controller.cartData[index].cartName);
                                      // controller.cartData.removeAt(index);
                                      deleteCartItem(index);
                                    },
                                  ),
                                  children: [
                                    SlidableAction(
                                      onPressed: (BuildContext context) {},
                                      backgroundColor: Colors.red,
                                      icon: Icons.delete,
                                      label: 'Delete',
                                    ),
                                  ],
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: screensize.height * 0.18,
                                  width: screensize.width * 1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 236, 236, 236),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: screensize.height * .15,
                                              width: screensize.width * 0.2,
                                              child: Image.network(
                                                cart.cartimageUrl,
                                              ),
                                            ),
                                            SizedBox(
                                              width: screensize.height * .025,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    cart.cartName,
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        screensize.width * .5,
                                                    height: screensize.height *
                                                        0.07,
                                                    child: Text(
                                                      cart.cartDescription,
                                                      overflow:
                                                          TextOverflow.fade,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "₹${cart.cartPrice}",
                                                        style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            screensize.height *
                                                                .12,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(top: BorderSide(width: .2)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Obx(() {
                              return Text(
                                "₹${controller.tt.value.toStringAsFixed(2)}", // Format total
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              );
                            }),
                          ),
                          InkWell(
                            onTap: () {
                              if (controller.tt.value > 100) {
                                openRazorpay(
                                    context, controller.tt.value, data);
                              } else {
                                showSnackBar(context,
                                    "Minimum Order Amount is More Than 100",300);
                              }
                            },
                            child: Container(
                              height: screensize.height * .065,
                              width: screensize.width * .5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: const Center(
                                child: Text(
                                  "Place order",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void deleteCartItem(int index) {
  CartData removedItem = controller.cartData.removeAt(index);
  controller.tt.value -= removedItem.cartPrice;
}

void deleteCartAllItem() {
  // Iterate through all items in cartData and subtract their prices from the total
  for (CartData cart in controller.cartData) {
    controller.tt.value -= cart.cartPrice;
  }
  // Clear the entire cartData list
  controller.cartData.clear();
}

double calculateTotalPrice(List<CartData> cartData) {
  double tt = 0;
  for (CartData cart in cartData) {
    tt += cart.cartPrice;
  }
  return tt;
}
