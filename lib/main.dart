// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: const HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("E-commerce App"),
//         backgroundColor: Colors.black,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 50% Off banner section with background image
//             Stack(
//               children: [
//                 Container(
//                   height: 200.0,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                           'assets\images\perfum1.jpg'), // Asset image used
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Container(
//                     color: Colors.black
//                         .withOpacity(0.5), // Dark overlay for text visibility
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             "50% Off",
//                             style: TextStyle(
//                               fontSize: 28,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           const Text(
//                             "On everything today\nWith code: SPECIALOFFER",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.white,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.red,
//                             ),
//                             child: const Text('Get Now'),
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
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'New Arrivals',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("View All"),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 250.0,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10, // Increased to 10 items
//                 itemBuilder: (context, index) {
//                   return productCard(
//                     'Product $index',
//                     '\$${(index + 1) * 50}.00',
//                     'assets/images/perfum1.jpg', // Updated for AssetImage
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Popular Items Section (column format)
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: const Text(
//                 'Popular Items',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: List.generate(7, (index) {
//                   return popularItemCard(
//                     'Popular Item $index',
//                     '\$${(index + 1) * 70}.00',
//                     'assets/images/popular_$index.jpg', // Updated for AssetImage
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),

//       // Bottom Navigation Bar
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // Home is selected
//         onTap: (value) {},
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

//   // Helper function for product card
//   Widget productCard(String name, String price, String assetPath) {
//     return Container(
//       width: 160.0,
//       margin: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Image.asset(assetPath, height: 120.0, fit: BoxFit.cover),
//           const SizedBox(height: 8.0),
//           Text(
//             name,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(price),
//         ],
//       ),
//     );
//   }

//   // Helper function for popular item card
//   Widget popularItemCard(String name, String price, String assetPath) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: ListTile(
//         leading: Image.asset(assetPath, height: 60.0, fit: BoxFit.cover),
//         title: Text(name),
//         subtitle: Text(price),
//       ),
//     );
//   }
// }

// import 'dart:html';
// new

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final List<Map<String, String>> newArrivals = [
//     {
//       'name': 'Marc Jacobs Perfum',
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
//       'name': 'Mens Wallet',
//       'price': '\$70.00',
//       'image': 'assets/images/menswallet.jpg', // Unique image
//     },

//     {
//       'name': 'Mens Wallet',
//       'price': '\$70.00',
//       'image': 'assets/images/menswallet.jpg', // Unique image
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
//     // Add more products with unique images
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
//     // Add more popular items with unique images
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("E-commerce App"),
//         backgroundColor: Colors.grey,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 50% Off banner section with background image
//             Stack(
//               children: [
//                 Container(
//                   height: 400.0,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/bg.jpg'),
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
//                           // 50% Off Text with Shadow and Large Font
//                           const Text(
//                             "50% Off",
//                             style: TextStyle(
//                               fontSize: 42, // Larger size for emphasis
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   offset: Offset(2, 2),
//                                   blurRadius: 8,
//                                   color:
//                                       Colors.black38, // Subtle shadow for depth
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 10),

//                           // Offer Text with Gradient and Improved Readability
//                           const Text(
//                             "On everything today\nWith code: SPECIALOFFER",
//                             style: TextStyle(
//                               fontSize:
//                                   20, // Slightly larger size for better visibility
//                               color: Colors.white,
//                               fontWeight: FontWeight
//                                   .w500, // Medium weight for better contrast
//                               letterSpacing:
//                                   1.2, // More spacing for better readability
//                               shadows: [
//                                 Shadow(
//                                   offset: Offset(1, 1),
//                                   blurRadius: 5,
//                                   color: Colors
//                                       .black54, // Light shadow for smooth effect
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.start,
//                           ),
//                           const SizedBox(height: 20),

//                           // Button with a Beautiful, Smooth Design
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.pink,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                     12), // Rounded button corners
//                               ),
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 16, horizontal: 40),
//                               elevation:
//                                   5, // Add elevation for a floating effect
//                             ),
//                             child: const Text(
//                               'Get Now',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1.5, // Spacing for clarity
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

//             // New Arrivals Section (Horizontal Scroll)
//             const SectionTitle(title: 'New Arrivals'),
//             SizedBox(
//               height: 250.0,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: newArrivals.length,
//                 itemBuilder: (context, index) {
//                   return ProductCard(
//                     name: newArrivals[index]['name']!,
//                     price: newArrivals[index]['price']!,
//                     assetPath: newArrivals[index]['image']!,
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Popular Items Section (Vertical List)
//             const SectionTitle(title: 'Popular Items'),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: popularItems.map((item) {
//                   return PopularItemCard(
//                     name: item['name']!,
//                     price: item['price']!,
//                     assetPath: item['image']!,
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // Home is selected
//         onTap: (value) {},
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

// // Section Title Widget (for both "New Arrivals" and "Popular Items")
// class SectionTitle extends StatelessWidget {
//   final String title;
//   const SectionTitle({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Product Card for New Arrivals (Horizontal Scroll)
// class ProductCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const ProductCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 160.0,
//       margin: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Image.asset(assetPath, height: 120.0, fit: BoxFit.cover),
//           const SizedBox(height: 8.0),
//           Text(
//             name,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(price),
//         ],
//       ),
//     );
//   }
// }

// // Popular Item Card for Popular Items (Vertical List)
// class PopularItemCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const PopularItemCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: ListTile(
//         leading: Image.asset(assetPath, height: 60.0, fit: BoxFit.cover),
//         title: Text(name),
//         subtitle: Text(price),
//       ),
//     );
//   }
// }

//new2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final List<Map<String, String>> newArrivals = [
//     {
//       'name': 'Marc Jacobs Perfum',
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("E-commerce App"),
//         backgroundColor: Colors.grey,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 50% Off banner section with background image
//             Stack(
//               children: [
//                 Container(
//                   height: 400.0,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/bg.jpg'),
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
//                           // 50% Off Text with Shadow and Large Font
//                           const Text(
//                             "50% Off",
//                             style: TextStyle(
//                               fontSize: 42, // Larger size for emphasis
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               shadows: [
//                                 Shadow(
//                                   offset: Offset(2, 2),
//                                   blurRadius: 8,
//                                   color:
//                                       Colors.black38, // Subtle shadow for depth
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 10),

//                           // Offer Text with Gradient and Improved Readability
//                           const Text(
//                             "On everything today\nWith code: SPECIALOFFER",
//                             style: TextStyle(
//                               fontSize:
//                                   20, // Slightly larger size for better visibility
//                               color: Colors.white,
//                               fontWeight: FontWeight
//                                   .w500, // Medium weight for better contrast
//                               letterSpacing:
//                                   1.2, // More spacing for better readability
//                               shadows: [
//                                 Shadow(
//                                   offset: Offset(1, 1),
//                                   blurRadius: 5,
//                                   color: Colors
//                                       .black54, // Light shadow for smooth effect
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.start,
//                           ),
//                           const SizedBox(height: 20),

//                           // Button with a Beautiful, Smooth Design
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.pink,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                     12), // Rounded button corners
//                               ),
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 16, horizontal: 40),
//                               elevation:
//                                   5, // Add elevation for a floating effect
//                             ),
//                             child: const Text(
//                               'Get Now',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1.5, // Spacing for clarity
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

//             // New Arrivals Section (Horizontal Scroll)
//             const SectionTitle(title: 'New Arrivals'),
//             SizedBox(
//               height: 250.0,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: newArrivals.length,
//                 itemBuilder: (context, index) {
//                   return ProductCard(
//                     name: newArrivals[index]['name']!,
//                     price: newArrivals[index]['price']!,
//                     assetPath: newArrivals[index]['image']!,
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Popular Items Section (Vertical List)
//             const SectionTitle(title: 'Popular Items'),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 children: popularItems.map((item) {
//                   return PopularItemCard(
//                     name: item['name']!,
//                     price: item['price']!,
//                     assetPath: item['image']!,
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // Home is selected
//         onTap: (value) {},
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

// // Section Title Widget (for both "New Arrivals" and "Popular Items")
// class SectionTitle extends StatelessWidget {
//   final String title;
//   const SectionTitle({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Product Card for New Arrivals (Horizontal Scroll)
// class ProductCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const ProductCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 220.0, // Increased width for larger images
//       margin: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Image.asset(assetPath, height: 120.0, fit: BoxFit.cover),
//           const SizedBox(height: 8.0),
//           Text(
//             name,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(price),
//         ],
//       ),
//     );
//   }
// }

// // Popular Item Card for Popular Items (Vertical List)
// class PopularItemCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const PopularItemCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: ListTile(
//         leading: Image.asset(assetPath, width: 50.0, height: 50.0),
//         title: Text(name),
//         subtitle: Text(price),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

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
//         onTap: (value) {},
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

// // Product Detail Page
// class ProductDetailsPage extends StatelessWidget {
//   final Map<String, String> product;
//   final Function(Map<String, String>) addToCart;

//   const ProductDetailsPage(
//       {Key? key, required this.product, required this.addToCart})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product['name']!),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(product['image']!, height: 250.0, fit: BoxFit.cover),
//             const SizedBox(height: 16),
//             Text(
//               product['name']!,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               product['price']!,
//               style: const TextStyle(
//                 fontSize: 20,
//                 color: Colors.red,
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "hello its me...",
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 addToCart(product); // Add product to cart
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Added to cart!')),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.pink,
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
//               ),
//               child: const Text(
//                 'Add to Cart',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Cart Page
// class CartPage extends StatelessWidget {
//   final List<Map<String, String>> cart;

//   const CartPage({Key? key, required this.cart}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Cart"),
//       ),
//       body: cart.isEmpty
//           ? const Center(child: Text('Your cart is empty'))
//           : ListView.builder(
//               itemCount: cart.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.asset(cart[index]['image']!, width: 50.0),
//                   title: Text(cart[index]['name']!),
//                   subtitle: Text(cart[index]['price']!),
//                 );
//               },
//             ),
//     );
//   }
// }

// // Section Title Widget
// class SectionTitle extends StatelessWidget {
//   final String title;
//   const SectionTitle({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Product Card for New Arrivals (Horizontal Scroll)
// class ProductCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const ProductCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 220.0,
//       margin: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Image.asset(assetPath, height: 120.0, fit: BoxFit.cover),
//           const SizedBox(height: 8.0),
//           Text(
//             name,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(price),
//         ],
//       ),
//     );
//   }
// }

// // Popular Item Card for Popular Items (Vertical List)
// class PopularItemCard extends StatelessWidget {
//   final String name;
//   final String price;
//   final String assetPath;
//   const PopularItemCard(
//       {super.key,
//       required this.name,
//       required this.price,
//       required this.assetPath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: ListTile(
//         leading: Image.asset(assetPath, width: 50.0, height: 50.0),
//         title: Text(name),
//         subtitle: Text(price),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/home.dart'; // Import the HomeScreen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
