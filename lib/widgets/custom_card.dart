import 'package:clickchic/components/text_format.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                text: 'New shops',
                fontWeight: FontWeight.w600,
              ),
              PoppinsText(
                text: '5% off for first buyers.',
                fontWeight: FontWeight.w200,
              ),
            ],
          ),
          Image.asset(
            'assets/images/image-1.png',
            width: 150,
          ),
        ],
      ),
    );
  }
}
