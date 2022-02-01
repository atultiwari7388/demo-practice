import 'package:demo_ui/Models/fast_food.model.dart';
import 'package:demo_ui/Models/product.model.dart';
import 'package:demo_ui/screens/next.screen.dart';
import 'package:demo_ui/screens/ProductDetailScreen/product_detail.screen.dart';
import 'package:demo_ui/utils/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
        // print(currentPageValue.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height.toString());
    print(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      // backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Container(
          height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          child: RefreshIndicator(
            onRefresh: () async {
              print("refresh product");
            },
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: Colors.black),
                    Row(
                      children: [
                        Icon(Icons.shopping_bag, color: Colors.black),
                        SizedBox(width: Dimensions.width30),
                        Icon(Icons.notifications, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.height10),
                // heading text
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Delicious food ready to delivered for you:",
                    style: TextStyle(
                      fontSize: Dimensions.fontSize20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                        fontSize: Dimensions.fontSize15,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Dimensions.horizontal20,
                        vertical: Dimensions.vertical16,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: Dimensions.height10 * 4),

                // custom card Slider

                Container(
                  height: 240,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return CategoryCard(product: products[position]);
                    },
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                DotsIndicator(
                  dotsCount: 5,
                  position: currentPageValue,
                  decorator: DotsDecorator(
                    activeColor: Colors.green.shade300,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),

                //body section
                Column(
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
                              fontSize: Dimensions.fontSize20,
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
                                fontSize: Dimensions.fontSize15,
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
                        height: Dimensions.productCardHeight,
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
                              fontSize: Dimensions.fontSize20,
                            ),
                          ),
                          Text(
                            "see all",
                            style: TextStyle(
                              fontSize: Dimensions.fontSize15,
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
                      height: Dimensions.productParentCardHeight,
                      // color: Colors.green,
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) => SizedBox(
                          width: Dimensions.width20,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: Dimensions.productImageHeight,
                                  width: Dimensions.productImageWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: Colors.green,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        fastFoodData.image,
                                      ),
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
              ],
            ),
          ),
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
                height: Dimensions.productImageHeight,
                width: Dimensions.productImageWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.width20),
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(product.image), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Text(product.title),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Text("\₹${product.price}"),
            ),
          ],
        ),
      ),
    );
  }
}
