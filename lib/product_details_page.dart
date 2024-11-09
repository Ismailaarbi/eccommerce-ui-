// // import 'package:flutter/material.dart';

// // class ProductDetailsPage extends StatelessWidget {
// //   final Map<String, String> product;

// //   const ProductDetailsPage({super.key, required this.product});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(product['name']!),
// //         backgroundColor: Colors.pink,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Centered Image with rounded corners
// //             Center(
// //               child: Container(
// //                 width: 250.0,
// //                 height: 250.0,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(20),
// //                   image: DecorationImage(
// //                     image: AssetImage(product['image']!),
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Product name
// //             Text(
// //               product['name']!,
// //               style: const TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             const SizedBox(height: 8),

// //             // Product price
// //             Text(
// //               product['price']!,
// //               style: const TextStyle(
// //                 fontSize: 20,
// //                 color: Colors.red,
// //               ),
// //             ),
// //             const SizedBox(height: 20),

// //             // Size options
// //             const Text(
// //               "Available Sizes:",
// //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 8),
// //             Row(
// //               children: const [
// //                 SizeButton(size: '39'),
// //                 SizeButton(size: '40'),
// //                 SizeButton(size: '41'),
// //                 SizeButton(size: '42'),
// //               ],
// //             ),
// //             const SizedBox(height: 20),

// //             // Color options
// //             const Text(
// //               "Available Colors:",
// //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 8),
// //             Row(
// //               children: const [
// //                 ColorButton(color: Colors.red),
// //                 ColorButton(color: Colors.blue),
// //                 ColorButton(color: Colors.black),
// //                 ColorButton(color: Colors.white),
// //               ],
// //             ),
// //             const SizedBox(height: 20),

// //             // Description
// //             const Text(
// //               "Description: This is a great product made with high-quality materials.",
// //               style: TextStyle(fontSize: 16),
// //             ),
// //             const SizedBox(height: 20),

// //             // Add to Cart button
// //             ElevatedButton(
// //               onPressed: () {
// //                 ScaffoldMessenger.of(context).showSnackBar(
// //                   const SnackBar(content: Text('Added to cart!')),
// //                 );
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 backgroundColor: Colors.pink,
// //                 padding:
// //                     const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(30),
// //                 ),
// //               ),
// //               child: const Text(
// //                 'Add to Cart',
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   color: Colors.black,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Size button widget
// // class SizeButton extends StatelessWidget {
// //   final String size;
// //   const SizeButton({super.key, required this.size});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
// //       child: ElevatedButton(
// //         onPressed: () {},
// //         style: ElevatedButton.styleFrom(
// //           iconColor: Colors.grey[200],
// //           padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(15),
// //           ),
// //         ),
// //         child: Text(
// //           size,
// //           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Color button widget
// // class ColorButton extends StatelessWidget {
// //   final Color color;
// //   const ColorButton({super.key, required this.color});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
// //       child: GestureDetector(
// //         onTap: () {},
// //         child: CircleAvatar(
// //           radius: 20,
// //           backgroundColor: color,
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class ProductDetailsPage extends StatelessWidget {
//   final Map<String, String> product;
//   final Function(Map<String, String>) addToCart; // Callback for adding to cart

//   ProductDetailsPage({required this.product, required this.addToCart});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product['name']!),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(product['image']!, height: 250, width: double.infinity),
//           const SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               product['name']!,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               product['price']!,
//               style: const TextStyle(
//                 fontSize: 20,
//                 color: Colors.grey,
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 addToCart(product); // Call the addToCart callback
//                 Navigator.pop(context); // Return to the previous screen
//               },
//               child: const Text('Add to Cart'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, String> product;
  final Function(Map<String, String>) addToCart; // Callback for adding to cart

  ProductDetailsPage({required this.product, required this.addToCart});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  String selectedSize = ''; // Track the selected size
  Color? selectedColor; // Track the selected color

  // Define available sizes and colors
  List<String> sizes = ['39', '40', '41', '42'];
  List<Color> colors = [Colors.red, Colors.blue, Colors.black, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['name']!),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Centered Image with rounded corners
            Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.product['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Product name
            Text(
              widget.product['name']!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Product price
            Text(
              widget.product['price']!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),

            // Size options
            const Text(
              "Available Sizes:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: sizes.map((size) {
                return SizeButton(
                  size: size,
                  isSelected: selectedSize == size,
                  onTap: () {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // Color options
            const Text(
              "Available Colors:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: colors.map((color) {
                return ColorButton(
                  color: color,
                  isSelected: selectedColor == color,
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // Description
            const Text(
              "Description: This is a great product made with high-quality materials.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Add to Cart button
            ElevatedButton(
              onPressed: () {
                widget.addToCart(widget.product); // Add to cart
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to cart!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Size button widget with checkmark for selection
class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  const SizeButton({
    super.key,
    required this.size,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            color: isSelected ? Colors.pink : Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected ? Colors.pink : Colors.grey,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                size,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              if (isSelected)
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// Color button widget with checkmark for selection
class ColorButton extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const ColorButton({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.pink : Colors.grey,
              width: 2,
            ),
            color: color,
          ),
          child: isSelected
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                )
              : null,
        ),
      ),
    );
  }
}
