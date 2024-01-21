
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageCarousel extends ConsumerWidget {
  List<Image> items;
  double width;

  ImageCarousel({required this.items, required this.width});



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        width: width,
        height: width * 9 / 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ImageSlideshow(
            children: items,
            width: width,
            height: width*0.75,
            ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {


    Path path = Path()
      ..moveTo(0.05*size.width, 0)
    ..lineTo(0.95*size.width, 0)
    ..arcToPoint(Offset(size.width, 0.05*size.width), radius: Radius.circular(0.05*size.width))
    ..lineTo(size.width, size.height-0.05*size.width)
      ..arcToPoint(Offset(0.95*size.width, size.height), radius: Radius.circular(0.05*size.width))
      ..lineTo(0.05*size.width, size.height)
      ..arcToPoint(Offset(0, size.height-0.05*size.width), radius: Radius.circular(0.05*size.width))
      ..lineTo(0, 0.05*size.width)
      ..arcToPoint(Offset(0.05*size.width, 0), radius: Radius.circular(0.05*size.width));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
