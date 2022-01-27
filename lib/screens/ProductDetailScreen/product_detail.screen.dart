import 'package:demo_ui/screens/ProductDetailScreen/components/image.component.dart';
import 'package:demo_ui/screens/ProductDetailScreen/components/titleanddescription.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key, required this.productData})
      : super(key: key);

  final productData;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Future<dynamic> _showModalBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                ),
                Text(
                  "Additional Product Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
            ),
            Row(
              children: [
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      widget.productData.image,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.productData.title),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  _showDialogBox() {
    return showCupertinoDialog(
      context: context,
      builder: (_) {
        return CupertinoAlertDialog(
          title: Text("Success"),
          content: Text("Your product has been added to cart"),
          actions: [
            CupertinoDialogAction(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productData.title),
        elevation: 1.0,
      ),
      body: ListView(
        children: [
          ImageComponent(productData: widget.productData),
          TitleandDescriptionComponent(productData: widget.productData),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              height: 60,
              child: Center(
                child: InkWell(
                  onTap: _showModalBottomSheet,
                  child: Text(
                    "buy now".toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 60,
              child: Center(
                child: InkWell(
                  onTap: _showDialogBox,
                  child: Text(
                    "add to cart".toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
