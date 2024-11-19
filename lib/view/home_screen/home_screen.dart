import 'package:flutter/material.dart';
import 'package:internship_task/view/screen_2/screen_2.dart';
import 'package:internship_task/view/screen_3/screen_3.dart';

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
            _buildShopInfoText("Shop Name:", "Hub Quality Bakers"),
            _buildShopInfoText("FSSAI License Number:", "873687DHDHJH122"),
            _buildShopInfoText("Commission %:", "10"),
            _buildAddImageButton(),
            SizedBox(height: 20),
            _buildSectionWithIconText(
                "Packaging & Delivery", context, Screen2()),
            SizedBox(height: 10),
            _buildSectionWithIconText("Promotions", context, Screen3()),
            SizedBox(height: 50),
            _buildNoteSection(),
          ],
        ),
      ),
    );
  }

  // Helper Method: Builds a shop info text widget
  Widget _buildShopInfoText(String title, String value) {
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

  // Helper Method: Builds the "Add Image" button
  Widget _buildAddImageButton() {
    return Container(
      width: 380,
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(255, 22, 22, 1)),
      child: Center(
        child: Text(
          "Save",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }

  // Helper Method: Builds a section with icon and text (Packaging, Promotions)
  Widget _buildSectionWithIconText(
      String sectionTitle, BuildContext context, Widget designatioScreen) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => designatioScreen,
            ));
      },
      child: Container(
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
              sectionTitle,
              style: TextStyle(color: Color.fromRGBO(255, 22, 22, 1)),
            ),
            Spacer(),
            Icon(Icons.chevron_right_outlined,
                color: Color.fromRGBO(98, 98, 98, 1)),
          ],
        ),
      ),
    );
  }

  // Helper Method: Builds the "Note" section
  Widget _buildNoteSection() {
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
          SizedBox(height: 10),
          _buildNoteRow("1. ",
              "Shop will not be visible to customers if you have no products added!"),
          SizedBox(height: 5),
          _buildNoteRow("2. ",
              "We recommend adding products at menu price to avoid items being delisted in the future!"),
        ],
      ),
    );
  }

  // Helper Method: Builds each row of the note section
  Widget _buildNoteRow(String number, String noteText) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number, // Number with period
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: Text(
            noteText,
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
