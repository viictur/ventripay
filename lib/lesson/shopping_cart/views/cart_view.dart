import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/cart_provider.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, myCart, _) {
        return Scaffold(
          appBar: AppBar(title: Text('Cart')),
          body: myCart.cartCount <= 0
              ? Center(
                  child: Text(
                    'There is nothing in your cart.',
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          final cart = myCart.carts[index];
                          return Card(
                            child: ListTile(
                              leading: Icon(
                                cart.product.icon,
                              ),
                              title: Text(
                                cart.product.name,
                              ),
                              subtitle: Text(
                                cart.quantity.toString(),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  myCart.removeQuantity(
                                    cart.product,
                                  );
                                },
                                icon: Icon(Icons.remove),
                              ),
                            ),
                          );
                        },
                        itemCount: myCart.carts.length,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Price'),
                          Text(
                            myCart.totalPrice.toString(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
