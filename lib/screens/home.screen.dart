import 'package:demo_ui/Models/fast_food.model.dart';
import 'package:demo_ui/Models/product.model.dart';
import 'package:demo_ui/screens/next.screen.dart';
import 'package:demo_ui/screens/ProductDetailScreen/product_detail.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 238,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // custom app bar design
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, color: Colors.white),
                        Row(
                          children: [
                            Icon(Icons.shopping_bag, color: Colors.white),
                            SizedBox(width: 30),
                            Icon(Icons.notifications, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // heading text
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Delicious food ready to delivered for you:",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // search bar
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search food would you like to eat",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.blue.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //body section
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  print("Page Refresh");
                },
                child: ListView(
                  children: [
                    Container(
                      // height: 700,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          // first section
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recommended",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NextScreen(),
                                    ),
                                  ),
                                  child: Text(
                                    "Seel all",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.blue.shade400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // list of recommended food
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 240,
                              // color: Colors.red,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return CategoryCard(
                                    product: products[index],
                                  );
                                },
                              ),
                            ),
                          ),

                          // second section

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Fast Food picks for you",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  "see all",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // second card section

                          Container(
                            padding: EdgeInsets.all(8.0),
                            // margin: EdgeInsets.symmetric(vertical: 10.0),
                            height: 250,
                            // color: Colors.green,
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              separatorBuilder: (context, index) => SizedBox(
                                width: 20.0,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: fastFood.length,
                              itemBuilder: (BuildContext context, int index) {
                                var fastFoodData = fastFood[index];

                                return InkWell(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => ProductDetailScreen(
                                        productData: fastFoodData,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 270,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          // color: Colors.green,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                fastFoodData.image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(fastFoodData.title),
                                      Text("\₹${fastFoodData.price}"),
                                    ],
                                  ),
                                );
                              },
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
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProductDetailScreen(
            productData: product,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.image,
              child: Container(
                height: 170,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  // color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(product.image), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(product.title),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("\₹${product.price}"),
            ),
          ],
        ),
      ),
    );
  }
}
