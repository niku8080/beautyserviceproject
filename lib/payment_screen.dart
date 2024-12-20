import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/conform_order.dart';

class PaymentModeApp extends StatelessWidget {
  const PaymentModeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PaymentMode(),
    );
  }
}

class PaymentMode extends StatefulWidget {
  const PaymentMode({super.key});

  @override
  State<PaymentMode> createState() => _PaymentModeState();
}

class _PaymentModeState extends State<PaymentMode> {
  int? selectedPaymentMode; // Use this to track the selected payment mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 30,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        surfaceTintColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust spacing
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Payment Mode",
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                // Payment Modes
                _buildPaymentOption(1, "Credit/Debit/ATM Card"),
                const SizedBox(height: 10),
                _buildPaymentOption(2, "Net Banking"),
                const SizedBox(height: 10),
                _buildPaymentOption(3, "PhonePay Wallet"),
                const SizedBox(height: 10),
                _buildPaymentOption(4, "Cash On Delivery"),
              ],
            ),
            // Confirm Order Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedPaymentMode != null
                    ? () {
                        // Handle confirm order action
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Order Confirmed"),
                            content: Text(
                              "You have selected: ${_getPaymentModeName(selectedPaymentMode!)}",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    : null, // Disable button if no option is selected
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedPaymentMode != null
                      ? const Color.fromARGB(255, 245, 69, 128)
                      : Colors.grey, // Change color based on state
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ConfirmOrderApp()));              
                        },
                  child: Text(
                    "Confirm Order",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(int value, String title) {
    return Row(
      children: [
        Checkbox(
          value: selectedPaymentMode == value, // Check if this option is selected
          onChanged: (isChecked) {
            setState(() {
              selectedPaymentMode = isChecked == true ? value : null;
            });
          },
        ),
        Expanded(
          child: Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  String _getPaymentModeName(int value) {
    switch (value) {
      case 1:
        return "Credit/Debit/ATM Card";
      case 2:
        return "Net Banking";
      case 3:
        return "PhonePay Wallet";
      case 4:
        return "Cash On Delivery";
      default:
        return "Unknown";
    }
  }
}
