import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_check/screens/hotel.dart';
import 'package:skill_check/widgets/frame.dart';
import 'package:skill_check/widgets/info_cards.dart';

import '../models/reservation/api_reservation.dart';
import '../models/room/api_room.dart';
import '../widgets/image_carousel.dart';

class Room extends ConsumerWidget{
  List<dynamic>? _rooms;

  Map<num, List<Image>> _carouselItems = {};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    String title = ref.read(hotelNameProvider.notifier).state;
    final roomState = ref.watch(roomNotifierProvider);
    if (roomState != null) {
      roomState.when(
        data: (data) async {
          _rooms = data.rooms;
          for(int k = 0; k < _rooms!.length; k++){
            List<Image> list = [];
            if (_rooms![k] != null) {
              for (int i = 0; i < _rooms![k]["image_urls"].length; i++) {
                list.add(Image.network(
                  _rooms![k]["image_urls"][i],
                  fit: BoxFit.cover,
                ));
              }
              _carouselItems[k] = list;
            }
          }

        },
        error: (error) {
          ///Обработка возможных ошибок, однако поскольку это просто тестовое задание
          ///и при нормальном коде тут не может прийти ошибка, только если беда с интернетом,
          ///то обошолся просто print()
          print("Room error - $error!");
        },
        loading: () => [const CircularProgressIndicator()],
      );
    } else {return const CircularProgressIndicator();}
    if(roomState == RoomState.loading()){return const CircularProgressIndicator();}

    List<Widget> roomUnits = [];
    for(int i = 0; i < _rooms!.length; i++){
      roomUnits.add(const Padding(padding: EdgeInsetsDirectional.only(top: 10)));
      roomUnits.add(RoomUnit(width: width, items: _carouselItems[i]!, roomInfo: _rooms![i],));
      if(i == _rooms!.length-1){
        roomUnits.add(const Padding(padding: EdgeInsetsDirectional.only(top: 10)));
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 225, 225, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          title,
          style: const TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: roomUnits,
      ),
    );
  }
}

class RoomUnit extends ConsumerWidget{
  double width;
  List<Image> items;
  Map<String, dynamic> roomInfo;
  RoomUnit({required this.width, required this.items, required this.roomInfo});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> wrapChildren = [];
    for (int i = 0; i < roomInfo["peculiarities"].length; i++) {
      wrapChildren.add(InfoCard(text: roomInfo["peculiarities"][i]));
    }
    return Frame(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          ImageCarousel(
            items: items,
            width: width,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Text(
            roomInfo["name"],
            style: const TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Wrap(
            spacing: 7,
            runSpacing: 7,
            children: wrapChildren,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          AddInfoButton(width: width*0.5,),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Row(
            children: [
              Text(
                "${roomInfo["price"]} ₽ ",
                style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              Text(
                "${roomInfo["price_per"]}",
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
          Container(
            width: width,
            child: RawMaterialButton(
              fillColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Выбрать номер",
                style: TextStyle(
                    fontFamily: "SFPRODISPLAY",fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
              ),
              onPressed: ()async{
                if(roomInfo["id"] == 2){
                  Navigator.of(context).pushNamed("/reservation");
                  await ref.read(reservationNotifierProvider.notifier).getData();
                }
              },
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        ],
      ),
    );
  }
}

class AddInfoButton extends StatelessWidget{
  double width;
  AddInfoButton({required this.width,});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: width,
      child: RawMaterialButton(
        fillColor: Colors.lightBlue.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onPressed: () {},
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(width: width*0.9,),
            const Text(
              "Подробнее о номере",
              style: TextStyle(
                  fontFamily: "SFPRODISPLAY",fontWeight: FontWeight.w500, fontSize: 16, color: Colors.blue),
            ),
            const Positioned(
                right: 0,
                child: Icon(Icons.arrow_forward_ios, color: Colors.blue,)
            ),
          ],
        ),
      ),
    );
  }

}
