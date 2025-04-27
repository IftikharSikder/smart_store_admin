import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smart_store_admin/models/device.dart';

import '../services/device_service.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final devices = RestClient(Dio());

  Future fetchDevice() async {
    final response = await devices.getDevices();
    return Device.fromJson(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Smart Store Admin", style: TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder(
        future: fetchDevice(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final products = snapshot.data.data;

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.productName ?? 'Unknown'),
                  subtitle: Text('Price: \$${product.unitPrice}'),
                  trailing: Text('Qty: ${product.qty}'),
                );
              },
            );
          }

          return Center(child: Text('No data available'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Product',
        child: const Icon(Icons.add),
      ),
    );
  }
}
