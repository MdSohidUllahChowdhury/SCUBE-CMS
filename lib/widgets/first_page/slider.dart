import 'dart:async';

import 'package:flutter/material.dart';

class AutoRotatingImageCarousel extends StatefulWidget {
  final List<String> images;
  final Duration duration;

  const AutoRotatingImageCarousel({
    super.key,
    required this.images,
    this.duration = const Duration(seconds: 2),
  });

  @override
  State<AutoRotatingImageCarousel> createState() =>
      _AutoRotatingImageCarouselState();
}

class _AutoRotatingImageCarouselState extends State<AutoRotatingImageCarousel> {
  late PageController _pageController;
  // ignore: unused_field
  int _currentPage = 0;
  late Stream<int> _pageStream;
  late StreamSubscription<int> _pageStreamSubscription;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _pageStream = Stream.periodic(widget.duration, (count) {
      return (count + 1) % widget.images.length;
    });

    _pageStreamSubscription = _pageStream.listen((page) {
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          page,
          duration: const Duration(seconds: 3),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageStreamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(widget.images[index]),
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Usage Example
class WeatherSliderPage extends StatelessWidget {
  const WeatherSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRotatingImageCarousel(
      images: [
        'asset/slider/slider1.png',
        'asset/slider/slider2.png',
        'asset/slider/slider3.png',
      ],
      duration: const Duration(seconds: 1),
    );
  }
}
