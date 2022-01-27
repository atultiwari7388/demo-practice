import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleandDescriptionComponent extends StatelessWidget {
  const TitleandDescriptionComponent({
    Key? key,
    required this.productData,
  }) : super(key: key);

  final productData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productData.title,
            style: GoogleFonts.aBeeZee(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18.0),
          Row(
            children: [
              Text(
                '\₹${productData.price}',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 10),
              Text(
                '₹30',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '15% off',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText(
                productData.description,
                textAlign: TextAlign.justify,
                textStyle: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
