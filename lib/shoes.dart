import 'package:flutter/material.dart';

// class ShoesPage extends StatefulWidget {
//   final String name;
//   final String price;
//   final String description;
//   final String image;

//   ShoesPage({
//     required this.name,
//     required this.price,
//     required this.description,
//     required this.image,
//   });

//   @override
//   _ShoesPageState createState() => _ShoesPageState();
// }

// class _ShoesPageState extends State<ShoesPage> {
//   String? selectedSize = "Medium"; // Default size
//   String? selectedColor = "Red"; // Default color

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.name),
//         backgroundColor: Colors.pinkAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Image and basic information
//               Center(
//                 child: Image.asset(
//                   widget.image,
//                   height: 300,
//                   width: 300,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 widget.name,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 widget.description,
//                 style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//               ),
//               const SizedBox(height: 20),

//               // Size Selection
//               Text(
//                 "Select Size",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   sizeOption("Small"),
//                   sizeOption("Medium"),
//                   sizeOption("Large"),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               // Color Selection
//               Text(
//                 "Select Color",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   colorOption("Red", Colors.red),
//                   colorOption("Blue", Colors.blue),
//                   colorOption("Black", Colors.black),
//                 ],
//               ),
//               const SizedBox(height: 30),

//               // Price and Add to Cart Button
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     widget.price,
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.red),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add to cart logic here
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('${widget.name} added to Cart')),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       iconColor: Colors.pinkAccent,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12)),
//                       padding:
//                           EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//                     ),
//                     child: Text(
//                       "Add to Cart",
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Size Option Widget
//   Widget sizeOption(String size) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedSize = size;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         decoration: BoxDecoration(
//           color: selectedSize == size ? Colors.pinkAccent : Colors.grey[300],
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Text(
//           size,
//           style: TextStyle(
//             fontSize: 16,
//             color: selectedSize == size ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }

//   // Color Option Widget
//   Widget colorOption(String colorName, Color color) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedColor = colorName;
//         });
//       },
//       child: Container(
//         width: 50,
//         height: 50,
//         decoration: BoxDecoration(
//           color: color,
//           shape: BoxShape.circle,
//           border: Border.all(
//             color: selectedColor == colorName
//                 ? Colors.pinkAccent
//                 : Colors.transparent,
//             width: 3,
//           ),
//         ),
//       ),
//     );
//   }
// }

class ShoesPage extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final String image;

  const ShoesPage({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Text(name),
          Text(price),
          Text(description),
        ],
      ),
    );
  }
}
