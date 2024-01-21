import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EndScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Заказ оплачен",
            style: TextStyle(
                fontFamily: "SFPRODISPLAY",
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsetsDirectional.only(top: height / 8)),
          SizedBox(
            width: width,
            height: height / 2,
            child: Column(
              children: [
                Container(
                  width: width / 5,
                  height: width / 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade100),
                  child: Image.asset(
                    "assets/icons/party-popper.png",
                  ),
                ),
                const Padding(padding: EdgeInsetsDirectional.only(top: 30)),
                const Text(
                  "Ваш заказ принят в работу",
                  style: TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.black),
                ),
                const Padding(padding: EdgeInsetsDirectional.only(top: 20)),
                SizedBox(
                  width: width * 0.75,
                  child: const Text(
                    "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsetsDirectional.only(top: height*0.15-8.3)),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.grey.shade100, width: 2),
              left: BorderSide(color: Colors.grey.shade100, width: 2),
              right: BorderSide(color: Colors.grey.shade100, width: 2),
            )),
            child: Container(
              margin: EdgeInsetsDirectional.only(
                  top: 10, start: 10, end: 10, bottom: 20),
              height: 50,
              width: width * 0.8,
              child: RawMaterialButton(
                fillColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Супер!",
                  style: TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
                onPressed: () async {
                    Navigator.of(context).popUntil(ModalRoute.withName("/hotel"));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
