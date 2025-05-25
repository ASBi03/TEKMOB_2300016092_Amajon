import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8.0),
        Text(label),
      ],
    );
  }
}


class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Amajon Store'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'PROMO SPESIAL HARI INI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            // Produk 1
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 20.0,
                right: 12.0,
                bottom: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade100,
                    spreadRadius: 2,
                    blurRadius: 5, 
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 750.000',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: const [
                          Icon(Icons.local_shipping, color: Colors.grey, size: 16.0),
                          SizedBox(width: 4.0),
                          Text(
                            'Estimasi tiba 2-4 hari',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                        Transform.translate(
                          offset: Offset(0, -10),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star_half, color: Colors.blue, size: 20.0),
                              SizedBox(width: 4.0),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),                      
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                            ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 2
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 18.0,
                right: 8.0,
                bottom: 14.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade200,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Rp 350.000',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: const [
                          Icon(Icons.local_shipping, color: Colors.grey, size: 16.0),
                          SizedBox(width: 4.0),
                          Text(
                            'Estimasi tiba 2-4 hari',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      Transform.translate(
                          offset: Offset(0, -10),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star, color: Colors.blue, size: 20.0),
                              Icon(Icons.star_half, color: Colors.blue, size: 20.0),
                              Icon(Icons.star_border, color: Colors.blue, size: 20.0),
                              SizedBox(width: 4.0),
                              Text(
                                '3.5',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Beli',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Kategori
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const[
                      CategoryItem(icon: Icons.shopping_bag, label: 'Pakaian'),
                      CategoryItem(icon: Icons.watch, label: 'Aksesoris'),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CategoryItem(icon: Icons.devices, label: 'Elektronik'),
                      CategoryItem(icon: Icons.sports_esports, label: 'Gaming'),
                    ],
                  ),
                ],
              ),
            ),
             Container(
              padding: const EdgeInsets.all(32.0),
              color: Colors.pink.shade100,
              child: const Center(
                child: Text(
                  'Diskon Pelanggan Baru Hingga 50%!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.local_offer, color: Colors.red, size: 28),
                  SizedBox(width: 8),
                  Text(
                    'GRATIS ONGKIR SELURUH INDONESIA',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.local_shipping, color: Colors.red, size: 28),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
