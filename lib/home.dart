import 'package:flutter/material.dart';
import 'buy.dart'; // Import your BuyPage.dart file

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FLEW Games SHOPPEE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildBanner(),
            _buildCategorySection(),
            _buildFeaturedProducts(context), // Pass context here
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 200,
      child: PageView(
        children: [
          _buildBannerItem('assets/prbr.jpg'),
          _buildBannerItem('assets/brpr2.jpeg'),
          _buildBannerItem('assets/brpr3.png'),
        ],
      ),
    );
  }

  Widget _buildBannerItem(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            backgroundColor: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCategoryItem('action', 'assets/login_bg.webp'),
                _buildCategoryItem('adventure', 'assets/adventure.jpg'),
                _buildCategoryItem('arcade', 'assets/arcade.jpg'),
                _buildCategoryItem('racing', 'assets/racing.jpg'),
                _buildCategoryItem('strategy', 'assets/strategy.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String category, String imagePath) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Orange overlay
          Container(
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProducts(BuildContext context) { // Add BuildContext parameter here
    // Define your own product data here
    List<Map<String, String>> products = [
      {
        'name': 'feary attack',
        'description': 'A thrilling gun game where precision and speed determine victory in intense battles.',
        'imagePath': 'assets/pro1.webp',
      },
      {
        'name': 'Gunsmith',
        'description': 'A comprehensive gunsmith app offering tools and resources for firearm maintenance, customization, and expert advice.',
        'imagePath': 'assets/pro2.webp',
      },
      {
        'name': 'Chess',
        'description': 'A strategic game of intellect and foresight on the checkered battlefield.',
        'imagePath': 'assets/pro3.webp',
      },
      {
        'name': 'Realm Quest',
        'description': 'Embark on an epic adventure through fantastical realms, where ancient mysteries and formidable challenges await at every turn.',
        'imagePath': 'assets/pro4.webp',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Featured Products',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(products.length, (index) {
              return _buildFeaturedProductItem(
                context: context, // Pass context to _buildFeaturedProductItem
                productName: products[index]['name']!,
                productDescription: products[index]['description']!,
                productImagePath: products[index]['imagePath']!,
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProductItem({
    required BuildContext context, // Receive BuildContext parameter here
    required String productName,
    required String productDescription,
    required String productImagePath,
  }) {
    return Container(
      color: Colors.orangeAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            productImagePath,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              productName,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              productDescription,
              style: TextStyle(
                fontSize: 10,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buy()), // Navigate to BuyPage
              );
            },
            child: Text('BUY'),
          ),
        ],
      ),
    );
  }
}
