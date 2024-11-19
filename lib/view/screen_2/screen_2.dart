import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 76,
        title: buildText(
          text: "PACKAGING & DELIVERY",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildText(
              text: "Delivery Time:",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            SizedBox(height: 10), // Add spacing
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    labelText: "Enter Value",
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the fields
                Expanded(
                  child: buildTextField(
                    labelText: "Minutes",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildText(
                text: "Delivery Radius:",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1)),
            SizedBox(height: 10), // Add spacing
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    labelText: "Enter Value",
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the fields
                Expanded(
                  child: buildTextField(
                    labelText: "KM",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildText(
                text: "Free Delivery Radius:",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1)),
            SizedBox(height: 10), // Add spacing
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    labelText: "Enter Value",
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the fields
                Expanded(
                  child: buildTextField(
                    labelText: "KM",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildText(
                text: "Packaging & Delivery Fees:",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1)),
            SizedBox(
              height: 10,
            ),
            buildText(
                text: "Order Value(OV) Wise:",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1)),
            SizedBox(height: 10), // Add spacing
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    labelText: "OV ≥ ₹ 500",
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the fields
                Expanded(
                  child: buildTextField(
                    labelText: "0",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            buildText(
                text: "Order Value(OV) Wise:",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 1)),
            SizedBox(height: 10), // Add spacing
            Row(
              children: [
                Expanded(
                  child: buildTextField(
                    labelText: "OV < ₹ 500",
                  ),
                ),
                SizedBox(width: 10), // Add spacing between the fields
                Expanded(
                  child: buildTextField(
                    labelText: "Enter Price in ₹",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 328,
              height: 96,
              child: Text(
                  "Note:\n\n1.Minimum Value Allowed: ₹ 0\n2.Maximum Value Allowed: ₹ 100"),
            ),
            Spacer(),
            Center(
              child: Container(
                width: 370,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(255, 22, 22, 1)),
                child: Center(
                  child: Text(
                    "Add Image",
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Method to create a reusable Text widget
  Widget buildText({
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  /// Method to create a reusable TextField widget
  Widget buildTextField({required String labelText}) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color.fromRGBO(98, 98, 98, 1),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
