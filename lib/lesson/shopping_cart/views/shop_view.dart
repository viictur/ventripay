import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/cart_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/product_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/views/cart_view.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<CartProvider, ProductProvider>(
      builder: (context, myCart, myProduct, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Shop'),
            actions: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CartView(),
                        ),
                      );
                    },
                    icon: Icon(Icons.shopping_cart),
                  ),
                  myCart.cartCount > 0
                      ? Positioned(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              myCart.cartCount.toString(),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
          body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
            itemCount: myProduct.products.length,
            itemBuilder: (context, index) {
              final product = myProduct.products[index];
              return Card(
                child: Column(
                  children: [
                    Icon(product.icon),
                    Text(product.name),
                    Text(product.price.toString()),
                    Expanded(
                      child: MyButton(
                        title: 'Add to cart',
                        onPressed: () {
                          myCart.addCart(product);
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
