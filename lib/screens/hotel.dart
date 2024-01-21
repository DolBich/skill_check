import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:skill_check/models/hotel/api_hotel.dart';
import 'package:skill_check/models/room/api_room.dart';
import 'package:skill_check/widgets/bottom_button.dart';
import 'package:skill_check/widgets/frame.dart';
import 'package:skill_check/widgets/info_cards.dart';

import '../widgets/image_carousel.dart';

class Hotel extends ConsumerWidget {
  String? name;
  String? _adress;
  num? _minimalPrice;
  String? _priceForIt;
  num? _rating;
  String? _ratingName;
  List<dynamic>? _imageUrls;
  Map<String, dynamic>? _aboutTheHotel;

  List<Image> _carouselItems = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    final hotelState = ref.watch(hotelNotifierProvider);
    if (hotelState != null) {
      hotelState.when(
        data: (data) async {
          name = data.name;
          _adress = data.adress;
          _minimalPrice = data.minimal_price;
          _priceForIt = data.price_for_it;
          _rating = data.rating;
          _ratingName = data.rating_name;
          _imageUrls = data.image_urls;
          _aboutTheHotel = data.about_the_hotel;
          _carouselItems.clear();
          if (_imageUrls != null) {
            for (int i = 0; i < _imageUrls!.length; i++) {
              _carouselItems.add(Image.network(
                _imageUrls![i],
                fit: BoxFit.cover,
              ));
            }
          }
        },
        error: (error) {
          ///Обработка возможных ошибок, однако поскольку это просто тестовое задание
          ///и при нормальном коде тут не может прийти ошибка, только если беда с интернетом,
          ///то обошолся просто print()
          print("Hotel error - $error!");
        },
        loading: () => [const CircularProgressIndicator()],
      );
    } else {
      return const CircularProgressIndicator();
    }
    if (hotelState == HotelState.loading()) {
      return const CircularProgressIndicator();
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 225, 225, 1),
      body: ListView(children: [
        MainInfo(
          items: _carouselItems,
          width: width * 29 / 30,
          rating: _rating!,
          ratingName: _ratingName!,
          name: name!,
          adress: _adress!,
          minimalPrice: _minimalPrice!,
          priceForIt: _priceForIt!,
        ),
        const Divider(
          height: 10,
        ),
        AddInfo(
          width: width,
          aboutTheHotel: _aboutTheHotel!,
        ),
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        BottomButton(
          width: width,
          title: "К выбору номера",
          onPressed: () async {
            Navigator.of(context).pushNamed("/room");
            ref.read(hotelNameProvider.notifier).state = name!;
            await ref.read(roomNotifierProvider.notifier).getData();
          },
        ),
      ]),
    );
  }
}

class MainInfo extends ConsumerWidget {
  List<Image> items;
  double width;
  num rating;
  String ratingName;
  String name;
  String adress;
  num minimalPrice;
  String priceForIt;

  MainInfo({
    required this.items,
    required this.width,
    required this.rating,
    required this.ratingName,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Frame(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
              child: Text(
            "Отель",
            style: TextStyle(
                fontFamily: "SFPRODISPLAY",
                fontWeight: FontWeight.w500,
                fontSize: 18),
          )),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          ImageCarousel(
            items: items,
            width: width,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Container(
            margin: EdgeInsetsDirectional.only(end: width * 0.6),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  "$rating $ratingName",
                  style: const TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Text(
            "$name",
            style: const TextStyle(
                fontFamily: "SFPRODISPLAY",
                fontWeight: FontWeight.w500,
                fontSize: 22),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          RichText(text: TextSpan(
            text: "$adress",
            style: const TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.lightBlue,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = (){
              print("Tap");
              }
          )),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Row(
            children: [
              Text(
                "от $minimalPrice ₽ ",
                style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              Text(
                "$priceForIt",
                style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        ],
      ),
    );
  }
}

class AddInfo extends ConsumerWidget {
  double width;
  Map<String, dynamic> aboutTheHotel;

  AddInfo({required this.width, required this.aboutTheHotel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> wrapChildren = [];
    for (int i = 0; i < aboutTheHotel["peculiarities"].length; i++) {
      wrapChildren.add(InfoCard(text: aboutTheHotel["peculiarities"][i]));
    }
    return Frame(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          const Text(
            "Об отеле",
            style: TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Wrap(
            spacing: 7,
            runSpacing: 7,
            children: wrapChildren,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Text(
            "${aboutTheHotel["description"]}",
            style: const TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          InfoButtons(
            width: width,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        ],
      ),
    );
  }
}

class InfoButtons extends StatelessWidget {
  double width;

  InfoButtons({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            CustomButton(
                width: width * 14 / 15,
                text: "Удобства",
                icon: Icons.emoji_emotions_outlined),
            const Divider(
              height: 1,
            ),
            CustomButton(
                width: width * 14 / 15,
                text: "Что включено",
                icon: Icons.check_box_outlined),
            const Divider(
              height: 1,
            ),
            CustomButton(
                width: width * 14 / 15,
                text: "Что не включено",
                icon: Icons.indeterminate_check_box_outlined),
            const Divider(
              height: 1,
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  double width;
  String text;
  IconData icon;

  CustomButton({required this.width, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: width,
      child: RawMaterialButton(
        fillColor: Colors.grey.shade100,
        shape: const RoundedRectangleBorder(),
        onPressed: () {},
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              width: width * 0.9,
            ),
            Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
            Positioned(
              top: 10,
              left: 25,
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: "SFPRODISPLAY",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            const Positioned(
              bottom: 10,
              left: 25,
              child: Text(
                "Самое необходимое",
                style: TextStyle(
                    fontFamily: "SFPRODISPLAY",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
            const Positioned(
                right: 10,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}

final hotelNameProvider = StateProvider((ref) {
  String hotelName = '';
  return hotelName;
});
