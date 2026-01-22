import 'package:flutter/material.dart';
import 'package:scube_cms/model/second_page/action_button.dart';

class ActionButtonsGrid extends StatelessWidget {
  const ActionButtonsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ActionButton(
                  title: 'Analysis Pro',
                  image: Image.asset('asset/action/image1.png'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ActionButton(
                  title: 'G. Generator',
                  image: Image.asset('asset/action/image2.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ActionButton(
                  title: 'Plant Summary',
                  image: Image.asset('asset/action/image3.png'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ActionButton(
                  title: 'Natural Gas',
                  image: Image.asset('asset/action/image4.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: ActionButton(
                  title: 'D. Generator',
                  image: Image.asset('asset/action/image5.png'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ActionButton(
                  title: 'Water Process',
                  image: Image.asset('asset/action/image6.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


