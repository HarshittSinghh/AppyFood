import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildHotelCard(
            hotelName: 'Taj Hotel, Varanasi',
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/374667378.jpg?k=13acfe79c45b56ca7fe9ca7dc3aa1f7a07d15f46c1eb5b8814cd06d08d9fbfea&o=&hp=1',
            description:
                'Experience opulence and grandeur at Taj Hotel, Varanasi. Indulge in a lavish dining affair offering a diverse array of culinary delights amidst stunning views and impeccable service.',
            rating: 4.5,
            price: 150,
            discount: 10,
          ),
          _buildHotelCard(
            hotelName: 'Hotel Surya Kaiser Palace, Varanasi',
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/148675123.jpg?k=db6fa0287d102de50079c0e6a23c59f029d12c35f87ffc0ad35617865d43a0b1&o=&hp=1',
            description:
                'Hotel Surya Kaiser Palace is renowned for its fine dining options and exceptional hospitality. Delight in exquisite dishes crafted with precision, amidst an ambiance of sophistication and charm.',
            rating: 4.8,
            price: 200,
            discount: 15,
          ),
          _buildHotelCard(
            hotelName: 'Hotel Madin, Varanasi',
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/238507447.jpg?k=d30387fd7845ce97f47fe27b3c1f9ced46561edd5cf3cff6095d01583944b223&o=&hp=1',
            description:
                'Hotel Madin offers a delightful fusion of local and international flavors. Immerse yourself in a culinary journey marked by diverse cuisines and a warm, welcoming atmosphere.',
            rating: 4.3,
            price: 120,
            discount: 20,
          ),
          _buildHotelCard(
            hotelName: 'Radisson Hotel, Varanasi',
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/26729576.jpg?k=f766d1385ad6d419ebcb8fbfd2d95090faecb36941c58dfd90fc3e639917e669&o=&hp=1',
            description:
                'At Radisson Hotel, Varanasi, savor the distinctive blend of traditional and modern cuisines meticulously curated by expert chefs. Embark on a gastronomic adventure like no other.',
            rating: 4.6,
            price: 180,
            discount: 5,
          ),
          _buildHotelCard(
            hotelName: 'BrijRama Palace, Varanasi',
            imageUrl:
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/110018322.jpg?k=5615a04fc76f2b267980f672fed6bdbe92666b7124b469d94dcefb84bcfdd884&o=&hp=1',
            description:
                'Step into a world of culinary excellence at BrijRama Palace, Varanasi. Revel in award-winning dining experiences offering innovative dishes crafted from the finest ingredients.',
            rating: 4.7,
            price: 250,
            discount: 25,
          ),
        ],
      ),
    );
  }

  Widget _buildHotelCard({
    required String hotelName,
    required String imageUrl,
    required String description,
    required double rating,
    required int price,
    required int discount,
  }) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity, // Set width to double.infinity
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfoItem('Rating', rating, Icons.star),
                    _buildInfoItem('Price', '\$$price', Icons.attach_money),
                    _buildInfoItem('Discount', '$discount%', Icons.local_offer),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      'Reserve Table',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, dynamic value, IconData iconData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              iconData,
              color: Colors.red,
              size: 20,
            ),
            SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: DiningPage(),
    ),
  );
}
