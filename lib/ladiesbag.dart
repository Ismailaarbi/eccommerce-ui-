import 'package:flutter/material.dart';

class LadiesBagPage extends StatefulWidget {
  final String name;
  final String price;
  final String description;
  final String image;
  final VoidCallback addToCart; // Added the addToCart function parameter

  const LadiesBagPage({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.addToCart, // Require addToCart function
  });

  @override
  _LadiesBagPageState createState() => _LadiesBagPageState();
}

class _LadiesBagPageState extends State<LadiesBagPage> {
  String selectedSize = 'Medium'; // Default size
  String selectedColor = 'Red'; // Default color

  List<String> colors = ['Red', 'Blue', 'Black', 'Green'];
  List<String> sizes = ['Small', 'Medium', 'Large'];

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void selectColor(String color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        // Make the body scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                // Curved image
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.price,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              'Select Size:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: sizes.map((size) {
                return GestureDetector(
                  onTap: () => selectSize(size),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color:
                          selectedSize == size ? Colors.grey : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selectedSize == size ? Colors.grey : Colors.grey,
                      ),
                    ),
                    child: Text(
                      size,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:
                            selectedSize == size ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Text(
              'Select Color:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: colors.map((color) {
                return GestureDetector(
                  onTap: () => selectColor(color),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _getColorFromName(color),
                      border: Border.all(
                        color:
                            selectedColor == color ? Colors.black : Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            // Product Description
            Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.description, // Display the product description
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Call the addToCart function when the button is pressed
                  widget.addToCart();

                  // Show confirmation using a Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Added $selectedSize size, $selectedColor color Ladies Bag to cart'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorFromName(String colorName) {
    switch (colorName) {
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Black':
        return Colors.black;
      case 'Green':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
