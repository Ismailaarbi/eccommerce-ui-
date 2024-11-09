// // import 'package:flutter/material.dart';
// // import 'product_details_page.dart'; // Import the ProductDetailsPage
// // import 'cart_page.dart'; // Import CartPage

// // class HomeScreen extends StatefulWidget {
// //   HomeScreen({super.key});

// //   @override
// //   _HomeScreenState createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   List<Map<String, String>> cart = []; // Cart list to hold products

// //   final List<Map<String, String>> newArrivals = [
// //     // Product data here
// //   ];

// //   final List<Map<String, String>> popularItems = [
// //     // Popular items data here
// //   ];

// //   // Add product to cart
// //   void addToCart(Map<String, String> product) {
// //     setState(() {
// //       cart.add(product);
// //     });
// //   }

// //   // Navigate to product details page
// //   void openProductDetails(Map<String, String> product) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => ProductDetailsPage(
// //           product: product,
// //           addToCart: addToCart,
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("E-commerce App"),
// //         backgroundColor: Colors.grey,
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.shopping_cart),
// //             onPressed: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(
// //                   builder: (context) => CartPage(cart: cart),
// //                 ),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Banner section with 50% Off
// //             // Code for banner goes here
// //             // New Arrivals Section
// //             // Code for new arrivals list goes here
// //             // Popular Items Section
// //             // Code for popular items list goes here
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: 0, // Home is selected
// //         onTap: (value) {},
// //         selectedItemColor: Colors.red,
// //         unselectedItemColor: Colors.grey,
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.shopping_cart), label: "Cart"),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.notifications), label: "Notifications"),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'product_details_page.dart'; // Import the ProductDetailsPage
// import 'cart_page.dart'; // Import CartPage

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<Map<String, String>> cart = []; // Cart list to hold products

//   final List<Map<String, String>> newArrivals = [
//     {
//       'name': 'Marc Jacobs Perfume',
//       'price': '\$50.00',
//       'image': 'assets/images/jacobs.jpeg', // Unique image
//     },
//     {
//       'name': 'Ladies Bag',
//       'price': '\$60.00',
//       'image': 'assets/images/ladiesbag.jpg', // Unique image
//     },
//     {
//       'name': 'Mens Wallet',
//       'price': '\$70.00',
//       'image': 'assets/images/menswallet.jpg', // Unique image
//     },
//     {
//       'name': 'Jordan 1 shoes',
//       'price': '\$250.00',
//       'image': 'assets/images/jordon.jpeg', // Unique image
//     },
//     {
//       'name': 'Make Up',
//       'price': '\$180.00',
//       'image': 'assets/images/makeup.webp', // Unique image
//     },
//   ];

//   final List<Map<String, String>> popularItems = [
//     {
//       'name': 'Popular Item 1',
//       'price': '\$100.00',
//       'image': 'assets/images/perfum1.jpg', // Unique image
//     },
//     {
//       'name': 'Popular Item 2',
//       'price': '\$110.00',
//       'image': 'assets/images/menswallet.jpg', // Unique image
//     },
//     {
//       'name': 'Popular Item 3',
//       'price': '\$120.00',
//       'image': 'assets/images/popular3.jpg', // Unique image
//     },
//     {
//       'name': 'Popular Item 4',
//       'price': '\$130.00',
//       'image': 'assets/images/popular4.jpg', // Unique image
//     },
//     {
//       'name': 'Popular Item 5',
//       'price': '\$140.00',
//       'image': 'assets/images/popular5.jpg', // Unique image
//     },
//   ];

//   // Add product to cart
//   void addToCart(Map<String, String> product) {
//     setState(() {
//       cart.add(product);
//     });
//   }

//   // Navigate to product details page
//   void openProductDetails(Map<String, String> product) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProductDetailsPage(
//           product: product,
//           addToCart: addToCart,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("E-commerce App"),
//         backgroundColor: Colors.grey,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => CartPage(cart: cart),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Banner section with 50% Off
//             Stack(
//               children: [
//                 Container(
//                   height: 400.0,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/backgroud.jpeg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Container(
//                     color: Colors.black.withOpacity(0.5),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             "50% Off",
//                             style: TextStyle(
//                               fontSize: 42,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           const Text(
//                             "On everything today\nWith code: SPECIALOFFER",
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             textAlign: TextAlign.start,
//                           ),
//                           const SizedBox(height: 20),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.pink,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 16, horizontal: 40),
//                               elevation: 5,
//                             ),
//                             child: const Text(
//                               'Get Now',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // New Arrivals Section
//             const SectionTitle(title: 'New Arrivals'),
//             SizedBox(
//               height: 250.0,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: newArrivals.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () => openProductDetails(newArrivals[index]),
//                     child: ProductCard(
//                       name: newArrivals[index]['name']!,
//                       price: newArrivals[index]['price']!,
//                       assetPath: newArrivals[index]['image']!,
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Popular Items Section
//             const SectionTitle(title: 'Popular Items'),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: popularItems.map((item) {
//                   return GestureDetector(
//                     onTap: () => openProductDetails(item),
//                     child: PopularItemCard(
//                       name: item['name']!,
//                       price: item['price']!,
//                       assetPath: item['image']!,
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // Home is selected
//         onTap: (value) {
//           // Handle navigation for different bottom navigation items
//           if (value == 1) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => CartPage(cart: cart)),
//             );
//           } else if (value == 2) {
//             // Navigate to Notifications screen (placeholder for now)
//           } else if (value == 3) {
//             // Navigate to Profile screen (placeholder for now)
//           }
//         },
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart), label: "Cart"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications), label: "Notifications"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'product_details_page.dart'; // Import the Product Details Page

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<Map<String, String>> newArrivals = [
//     {
//       'name': 'Marc Jacobs Perfume',
//       'price': '\$50.00',
//       'image': 'assets/images/jacobs.jpeg',
//     },
//     {
//       'name': 'Ladies Bag',
//       'price': '\$60.00',
//       'image': 'assets/images/ladiesbag.jpg',
//     },
//     {
//       'name': 'Mens Wallet',
//       'price': '\$70.00',
//       'image': 'assets/images/menswallet.jpg',
//     },
//     {
//       'name': 'Jordan 1 shoes',
//       'price': '\$250.00',
//       'image': 'assets/images/jordon.jpeg',
//     },
//     {
//       'name': 'Make Up',
//       'price': '\$180.00',
//       'image': 'assets/images/makeup.webp',
//     },
//   ];

//   final List<Map<String, String>> popularItems = [
//     {
//       'name': 'Popular Item 1',
//       'price': '\$100.00',
//       'image': 'assets/images/watch.jpeg',
//     },
//     {
//       'name': 'Popular Item 2',
//       'price': '\$110.00',
//       'image': 'assets/images/jacket.jpeg',
//     },
//     {
//       'name': 'Popular Item 3',
//       'price': '\$120.00',
//       'image': 'assets/images/jordon.jpeg',
//     },
//     {
//       'name': 'Popular Item 4',
//       'price': '\$130.00',
//       'image': 'assets/images/sunglasses.jpeg',
//     },
//     {
//       'name': 'Popular Item 5',
//       'price': '\$140.00',
//       'image': 'assets/images/marc.jpg',
//     },
//   ];

//   void openProductDetails(Map<String, String> product) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProductDetailsPage(
//           product: product,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("E-commerce App"),
//         backgroundColor: Colors.grey,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             onPressed: () {
//               // Cart Page navigation logic here (if needed)
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Row of Two Banners (50% Off and 70% Off)
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         image: const DecorationImage(
//                           image: AssetImage('assets/images/backgroud.jpeg'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Stack(
//                         children: [
//                           Positioned.fill(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.5),
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             left: 16,
//                             bottom: 16,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "50% Off",
//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 5),
//                                 const Text(
//                                   "On everything today\nWith code: SPECIALOFFER",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.pinkAccent,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 10, horizontal: 20),
//                                   ),
//                                   child: const Text(
//                                     'Get Now',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 16), // Gap between the banners
//                   Expanded(
//                     child: Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         image: const DecorationImage(
//                           image: AssetImage('assets/images/backgroun2.webp'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Stack(
//                         children: [
//                           Positioned.fill(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.5),
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             left: 16,
//                             bottom: 16,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "70% Off",
//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 5),
//                                 const Text(
//                                   "Exclusive deals\nWith code: SAVE70",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.pinkAccent,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 10, horizontal: 20),
//                                   ),
//                                   child: const Text(
//                                     'Shop Now',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // New Arrivals Section
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 "New Arrivals",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 50),
//             SizedBox(
//               height: 250.0,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: newArrivals.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () => openProductDetails(newArrivals[index]),
//                     child: Card(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 8.0), // Added margin for spacing
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             newArrivals[index]['image']!,
//                             height: 180,
//                             width: 250,
//                             fit: BoxFit.cover,
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             newArrivals[index]['name']!,
//                             style: const TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             newArrivals[index]['price']!,
//                             style: const TextStyle(color: Colors.red),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 30),

//             // Popular Items Section
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 "Popular Items",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Column(
//               children: popularItems.map((item) {
//                 return GestureDetector(
//                   onTap: () => openProductDetails(item),
//                   child: Card(
//                     margin: const EdgeInsets.symmetric(vertical: 10.0),
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     child: ListTile(
//                       leading: Image.asset(
//                         item['image']!,
//                         width: 50.0,
//                         height: 50.0,
//                       ),
//                       title: Text(item['name']!),
//                       subtitle: Text(item['price']!),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:project/shoes.dart';
import 'perfume.dart'; // Import the PerfumePage
import 'product_details_page.dart';
import 'ladiesbag.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  // Tracks the selected tab

  List<Map<String, String>> cartItems = []; // List to track items in the cart

  final List<Map<String, String>> newArrivals = [
    {
      'name': 'Marc Jacobs Perfume',
      'price': '\$50.00',
      'image': 'assets/images/jacobs.jpeg',
    },
    {
      'name': 'Ladies Bag',
      'price': '\$60.00',
      'image': 'assets/images/ladiesbag.jpg',
    },
    {
      'name': 'Jordan 1 shoe',
      'price': '\$70.00',
      'image': 'assets/images/nike1.webp',
    },
    {
      'name': 'Make Up',
      'price': '\$180.00',
      'image': 'assets/images/makeup.webp',
    },
  ];

  final List<Map<String, String>> popularItems = [
    {
      'name': 'Popular Item 1',
      'price': '\$100.00',
      'image': 'assets/images/watch.jpeg',
    },
    {
      'name': 'Popular Item 2',
      'price': '\$110.00',
      'image': 'assets/images/jacket.jpeg',
    },
    {
      'name': 'Popular Item 3',
      'price': '\$120.00',
      'image': 'assets/images/nike1.webp',
    },
    {
      'name': 'Popular Item 4',
      'price': '\$130.00',
      'image': 'assets/images/sunglasses.jpeg',
    },
    {
      'name': 'Popular Item 5',
      'price': '\$140.00',
      'image': 'assets/images/marc.jpg',
    },
  ];

  // Open Product Details Page with addToCart functionality
  void openProductDetails(Map<String, String> product) {
    if (product['name']!.contains('Perfume')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PerfumePage(
            name: product['name']!,
            price: product['price']!,
            description: 'A luxurious fragrance for everyday wear.',
            image: product['image']!,
            addToCart: () => addToCart(
                product), // Passing the addToCart function with the product
          ),
        ),
      );
    } else if (product['name']!.contains('Bag')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LadiesBagPage(
            name: product['name']!,
            price: product['price']!,
            description:
                'A stylish and elegant bag.', // You can change this description as needed
            image: product['image']!,
            addToCart: () => addToCart(
                product), // Passing the addToCart function with the product
          ),
        ),
      );
    } else if (product['name']!.contains('makeup')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShoesPage(
            name: product['name']!,
            price: product['price']!,
            description: 'A stylish shoe for everyday wear',
            image: product['image']!,
          ),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailsPage(
            product: product,
            addToCart: addToCart, // Pass addToCart callback here
          ),
        ),
      );
    }
  }

  // Add Product to Cart
  void addToCart(Map<String, String> product) {
    setState(() {
      cartItems.add(product); // Add product to the cart
    });

    // You can show a Snackbar here as well if needed
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product['name']} added to Cart'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Function to handle bottom navigation tab change
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Cart Screen
  Widget buildCartScreen() {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(cartItems[index]['image']!, width: 50),
          title: Text(cartItems[index]['name']!),
          subtitle: Text(cartItems[index]['price']!),
          trailing: IconButton(
            icon: const Icon(Icons.remove_shopping_cart),
            onPressed: () {
              setState(() {
                cartItems.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }

  // Home Screen Content
  Widget buildHomeScreen() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo Banners (50% & 70% Off)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/backgroud.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "50% Off",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "On everything today\nWith code: AARBI",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                ),
                                child: const Text(
                                  'Get Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/backgroun2.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "70% Off",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Exclusive deals\nWith code: SAVE70",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pinkAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                ),
                                child: const Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "New Arrivals",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: 250.0,
            child: Padding(
              // Add padding to the entire ListView
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0), // Padding on both sides
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: newArrivals.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 16), // Space between items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => openProductDetails(newArrivals[index]),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(
                            15), // Rounded corners for the container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Rounded corners for the image
                            child: Image.asset(
                              newArrivals[index]['image']!,
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              newArrivals[index]['name']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            newArrivals[index]['price']!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Popular Items",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: popularItems.map((item) {
              return GestureDetector(
                onTap: () => openProductDetails(item),
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  elevation: 5.0,
                  child: ListTile(
                    leading: Image.asset(item['image']!, width: 50),
                    title: Text(item['name']!),
                    subtitle: Text(item['price']!),
                    trailing: IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      onPressed: () => addToCart(item),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("Shop Now"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Shopping Time!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("My Orders"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: selectedIndex == 0
          ? buildHomeScreen()
          : (selectedIndex == 1
              ? buildCartScreen()
              : Center(
                  child: Text(
                    selectedIndex == 2
                        ? 'Notifications Screen'
                        : 'Profile Screen',
                  ),
                )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.purpleAccent, // Active icon color
            unselectedItemColor: Colors.grey, // Inactive icon color
            showUnselectedLabels: true, // Show labels for inactive tabs
            type: BottomNavigationBarType.fixed, // Prevent icon scaling
            backgroundColor: Colors.transparent, // Transparent background
            elevation: 10,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _buildAnimatedIcon(Icons.home_outlined, 0),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _buildAnimatedIcon(Icons.shopping_cart_outlined, 1),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: _buildAnimatedIcon(Icons.notifications_outlined, 2),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: _buildAnimatedIcon(Icons.person_outline, 3),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build animated icon with smooth scaling and color transition
  Widget _buildAnimatedIcon(IconData iconData, int index) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        // Scaling the icon for animation
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Icon(
        iconData,
        key: ValueKey<int>(selectedIndex), // Key ensures proper animation
        size: 28,
        color: selectedIndex == index
            ? Colors.purpleAccent // Selected icon color
            : Colors.grey, // Unselected icon color
      ),
    );
  }
}
