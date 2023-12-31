import 'package:aiden/model/services/cart/cart_store.dart';
import 'package:aiden/view/list_of_pages/add_cart/cartpage.dart';
import 'package:aiden/view/widgets/show_dialogue_box.dart';
import 'package:aiden/viewmodel/utils/variables.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void openRazorpay(BuildContext context, price, description) {
  Razorpay razorpay = Razorpay();
  var options = {
    'key': 'rzp_test_Q55RPAxMOwgxMX',
    'amount': price * 100, // Amount in paise, so multiply by 100 for rupees
    'name': 'AIDEN',
    'description': description,
    'retry': {'enabled': true, 'max_count': 1},
    'send_sms_hash': true,
    'prefill': {'contact': '8888888888', 'email': userData.email},
    'external': {
      'wallets': ['paytm']
    }
  };

  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse response) {
    handlePaymentErrorResponse(context, response);
  });

  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
      (PaymentSuccessResponse response) {
    handlePaymentSuccessResponse(context, response);
  });

  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,
      (ExternalWalletResponse response) {
    handleExternalWalletSelected(context, response);
  });

  razorpay.open(options);
}

void handlePaymentErrorResponse(
    BuildContext context, PaymentFailureResponse response) {
  showAlertDialog(context, "Payment Failed",
      "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
}

void handlePaymentSuccessResponse(
    BuildContext context, PaymentSuccessResponse response) {
  showAlertDialog(
      context, "Payment Successful", "Payment ID: ${response.paymentId}");
  deleteAllCart()
      .then((value) => deleteCartAllItem())
      .then((value) => getCartData());

  print("Cleared Cart");
}

void handleExternalWalletSelected(
    BuildContext context, ExternalWalletResponse response) {
  showAlertDialog(
      context, "External Wallet Selected", "${response.walletName}");
}
