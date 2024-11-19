import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        titleSpacing: 76,
        title: Text(
          "MANAGE SHOP",
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopInfoText(title: "Shop Name:", value: "Hub Quality Bakers"),
            ShopInfoText(
                title: "FSSAI License Number:", value: "873687DHDHJH122"),
            ShopInfoText(title: "Commission %:", value: "10"),
            AddImageButton(),
            SizedBox(height: 20),
            PackagingAndDelivery(),
            SizedBox(height: 10),
            Promotions(),
            SizedBox(height: 50),
            NoteSection(),
          ],
        ),
      ),
    );
  }
}

// Shop Information Text widget (used for Shop Name, License, Commission)
class ShopInfoText extends StatelessWidget {
  final String title;
  final String value;

  const ShopInfoText({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            color: Color.fromRGBO(98, 98, 98, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

// Add Image Button widget
class AddImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(255, 22, 22, 1)),
      child: Center(
        child: Text(
          "Add Image",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}

// Packaging & Delivery widget
class PackagingAndDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Spacer(),
          Text(
            "Packaging & Delivery",
            style: TextStyle(color: Color.fromRGBO(255, 22, 22, 1)),
          ),
          Spacer(),
          Icon(Icons.chevron_right_outlined,
              color: Color.fromRGBO(98, 98, 98, 1)),
        ],
      ),
    );
  }
}

// Promotions widget
class Promotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Spacer(),
          Text(
            "Promotions",
            style: TextStyle(color: Color.fromRGBO(255, 22, 22, 1)),
          ),
          Spacer(),
          Icon(Icons.chevron_right_outlined,
              color: Color.fromRGBO(98, 98, 98, 1)),
        ],
      ),
    );
  }
}

// Note section widget
class NoteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Note:",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10), // Space below the "Note:" text
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1. ", // Number with period
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                child: Text(
                  "Shop will not be visible to customers if you have no products added!",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2. ",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                child: Text(
                  "We recommend adding products at menu price to avoid items being delisted in the future!",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
