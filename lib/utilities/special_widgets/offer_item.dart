import 'package:flutter/material.dart';
import 'package:nu_conta_marketplace/utilities/special_widgets/image_load_network.dart';

class OfferItem extends StatelessWidget {
  final String title;
  final double price;
  final String? imagePath;
  final VoidCallback? onTap;

  const OfferItem(
      {Key? key,
      required this.title,
      required this.price,
      this.imagePath,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Row(children: [
          ImageLoadNetwork(imagePath: imagePath),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: const TextStyle(fontSize: 16)),
                        const SizedBox(height: 2),
                        Text("\$$price", style: const TextStyle(fontSize: 14))
                      ]))),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Icons.arrow_forward_ios, color: Colors.grey))
        ]));
  }
}
