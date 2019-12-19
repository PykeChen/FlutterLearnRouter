import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({this.products}) : super();

  final List<Product> products;

  // The framework calls createState the first time a widget appears at a given
  // location in the tree. If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework will re-use the State object
  // instead of creating a new State object.

  @override
  _ShoppingListState createState() {
    print('shopping state create' + key.toString());
    return new _ShoppingListState();
  }

}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      // When user changes what is in the cart, we need to change _shoppingCart
      // inside a setState call to trigger a rebuild. The framework then calls
      // build, below, which updates the visual appearance of the app.

      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(ShoppingList oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          print('createing ShoppingListItem $product, key->${new ObjectKey(product).toString()}');
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

class Product {
  const Product({this.name});
  final String name;

  @override
  String toString() {
    return "{name = $name}";
  }
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product;

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different parts of the tree
    // can have different themes.  The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
      shadows:[Shadow(color: Colors.red, offset:Offset(10, 10), blurRadius: 10 ),
        Shadow(color: Colors.blue, offset:Offset(3, 3), blurRadius: 3 )]
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name, style: _getTextStyle(context)),
    );
  }
}

void main() {
  print('run main app');
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'Beg'),
        new Product(name: 'Csltsl'),
        new Product(name: 'SDFsfdf'),
        new Product(name: 'Psf'),
        new Product(name: 'Odsf'),
        new Product(name: 'ISFS'),
        new Product(name: 'Usdf'),
        new Product(name: 'Ysdfk'),
        new Product(name: 'Tsdf'),
        new Product(name: 'Rsdflj'),
        new Product(name: 'Wsdfjl'),
        new Product(name: 'Adfjldf'),
        new Product(name: 'Gosl'),
        new Product(name: 'Hsdlfj'),
        new Product(name: 'Jlsdfl'),
      ],
    ),
  ));
}

