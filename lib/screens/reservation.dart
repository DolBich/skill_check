import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_check/widgets/bottom_button.dart';
import 'package:skill_check/widgets/frame.dart';

import '../models/reservation/api_reservation.dart';

StateProvider touristsNumberProvider = StateProvider((ref) {
  int touristsNumber = 1;
  return touristsNumber;
});
bool openAll = false;
StateProvider openAllProvider = StateProvider((ref){
  return openAll;
});

class Reservation extends ConsumerWidget {
  String? hotelName;
  String? hotelAdress;
  num? horating;
  String? ratingName;
  String? departure;
  String? arrivalCountry;
  String? tourDateStart;
  String? tourDateStop;
  num? numberOfNights;
  String? room;
  String? nutrition;
  num? tourPrice;
  num? fuelCharge;
  num? serviceCharge;

  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    final reservationState = ref.watch(reservationNotifierProvider);
    if (reservationState != null) {
      reservationState.when(
        data: (data) async {
          hotelName = data.hotel_name;
          hotelAdress = data.hotel_adress;
          horating = data.horating;
          ratingName = data.rating_name;
          departure = data.departure;
          arrivalCountry = data.arrival_country;
          tourDateStart = data.tour_date_start;
          tourDateStop = data.tour_date_stop;
          numberOfNights = data.number_of_nights;
          room = data.room;
          nutrition = data.nutrition;
          tourPrice = data.tour_price;
          fuelCharge = data.fuel_charge;
          serviceCharge = data.service_charge;
        },
        error: (error) {
          ///Обработка возможных ошибок, однако поскольку это просто тестовое задание
          ///и при нормальном коде тут не может прийти ошибка, только если беда с интернетом,
          ///то обошолся просто print()
          print("Reservation error - $error!");
        },
        loading: () => const CircularProgressIndicator(),
      );
    } else {
      return const CircularProgressIndicator();
    }
    if (reservationState == const ReservationState.loading()) {
      return const CircularProgressIndicator();
    }

    // final touristsNumber = ref.watch(touristsNumberProvider.notifier).state;
    // List<Widget> tourists = [];
    // if(ref.read(openAllProvider.notifier).state){
    //   tourists.add(TouristsInfo(width: width, number: "Первый", open: true,));
    // } else {
    //   tourists.add(TouristsInfo(width: width, number: "Первый", open: false,));
    // }
    // for (int i = 1; i < touristsNumber; i++) {
    //   String _number = "";
    //   switch (i) {
    //     case (2):
    //       _number = "Второй";
    //       break;
    //     case (3):
    //       _number = "Третий";
    //       break;
    //     case (4):
    //       _number = "Четвёртый";
    //       break;
    //     case (5):
    //       _number = "Пятый";
    //       break;
    //   }
    //   if (i != 1) {
    //     tourists.add(
    //       const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
    //     );
    //     if(ref.read(openAllProvider.notifier).state){
    //       tourists.add(TouristsInfo(width: width, number: _number, open: true,));
    //     } else {
    //       tourists.add(TouristsInfo(width: width, number: _number, open: false,));
    //     }
    //   }
    // }
    // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    //   ref.read(openAllProvider.notifier).state = false;
    // });

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(
          child: Text(
            "Бронирование",
            style: TextStyle(
                fontFamily: "SFPRODISPLAY",
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          HotelInfo(
            width: width,
            name: hotelName!,
            adress: hotelAdress!,
            ratingName: ratingName!,
            rating: horating!,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          ReservationInfo(
            width: width,
            departure: departure!,
            hotelName: hotelName!,
            arrivalCountry: arrivalCountry!,
            numberOfNights: numberOfNights!,
            nutrition: nutrition!,
            room: room!,
            tourDateStart: tourDateStart!,
            tourDateStop: tourDateStop!,
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomerInfo(
                    width: width,
                    phoneController: phoneController,
                    emailController: emailController,
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
                  Tourists(width: width),
                ],
              )),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          AddTourist(width: width),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Payment(
              width: width,
              tourPrice: tourPrice!,
              fuelCharge: fuelCharge!,
              serviceCharge: serviceCharge!),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          BottomButton(
              width: width,
              title: "Оплатить ${tourPrice! + fuelCharge! + serviceCharge!} ₽",
              onPressed: () {
                ref.read(openAllProvider.notifier).state = true;
                SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).popAndPushNamed("/end_screen");
                  }
                });

              })
        ],
      ),
    );
  }
}

int touristCounter = 0;
List<Widget> tourists = [];
class Tourists extends ConsumerWidget{
  double width;
  Tourists({required this.width});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ref.watch(openAllProvider);
    ref.watch(touristsNumberProvider);
    if(touristCounter < ref.read(touristsNumberProvider.notifier).state){//Надо создать новый открытый блок, не меняя остальные
      String _number = "";
      switch (touristCounter+1) {
        case (1):
          _number = "Первый";
          break;
        case (2):
          _number = "Второй";
          break;
        case (3):
          _number = "Третий";
          break;
        case (4):
          _number = "Четвёртый";
          break;
        case (5):
          _number = "Пятый";
          break;
      }
      tourists.add(
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
      );
      tourists.add(TouristsInfo(width: width, number: _number));
    }
    if(ref.read(openAllProvider.notifier).state){//Нужно открыть все существующие блоки, не меняя их содержимого
      tourists.clear();
      for(int i = 0; i < touristCounter; i++){
        String _number = "";
        switch (i+1) {
          case (1):
            _number = "Первый";
            break;
          case (2):
            _number = "Второй";
            break;
          case (3):
            _number = "Третий";
            break;
          case (4):
            _number = "Четвёртый";
            break;
          case (5):
            _number = "Пятый";
            break;
        }
        tourists.add(
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        );
        tourists.add(TouristsInfo(width: width, number: _number));
      }
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        ref.read(openAllProvider.notifier).state = false;
      });
    }
    touristCounter = ref.read(touristsNumberProvider.notifier).state;

    // final touristsNumber = ref.watch(touristsNumberProvider.notifier).state;
    //
    //
    //   tourists.add(TouristsInfo(width: width, number: "Первый", open: true,));
    //
    // for (int i = 1; i < touristsNumber; i++) {
    //   String _number = "";
    //   switch (i) {
    //     case (1):
    //       _number = "Первый";
    //       break;
    //     case (2):
    //       _number = "Второй";
    //       break;
    //     case (3):
    //       _number = "Третий";
    //       break;
    //     case (4):
    //       _number = "Четвёртый";
    //       break;
    //     case (5):
    //       _number = "Пятый";
    //       break;
    //   }
    //   if (i != 1) {
    //     tourists.add(
    //       const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
    //     );
    //
    //       tourists.add(TouristsInfo(width: width, number: _number, open: true,));
    //
    //   }
    // }
    // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    //   openAll = false;
    // });

    return Column(
      children: tourists,
    );
  }

}

class HotelInfo extends StatelessWidget {
  double width;
  String adress;
  String name;
  String ratingName;
  num rating;

  HotelInfo({
    required this.width,
    required this.name,
    required this.adress,
    required this.ratingName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Frame(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Container(
            margin: EdgeInsetsDirectional.only(end: width * 0.59),
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
          RichText(
              text: TextSpan(
                  text: "$adress",
                  style: const TextStyle(
                    fontFamily: "SFPRODISPLAY",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.lightBlue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("Tap");
                    })),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        ],
      ),
    );
  }
}

TextStyle leftColumnStyle = const TextStyle(
  fontFamily: "SFPRODISPLAY",
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: Colors.grey,
);
TextStyle rightColumnStyle = const TextStyle(
  fontFamily: "SFPRODISPLAY",
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: Colors.black,
);

class ReservationInfo extends StatelessWidget {
  double width;
  String departure;
  String arrivalCountry;
  String tourDateStart;
  String tourDateStop;
  num numberOfNights;
  String hotelName;
  String room;
  String nutrition;

  ReservationInfo({
    required this.width,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.hotelName,
    required this.room,
    required this.nutrition,
  });

  @override
  Widget build(BuildContext context) {
    return Frame(
      width: width,
      child: Table(
        children: [
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text(
              "Вылет из",
              style: leftColumnStyle,
            ),
            Text(departure, style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Страна, город", style: leftColumnStyle),
            Text(arrivalCountry, style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Даты", style: leftColumnStyle),
            Text("$tourDateStart-$tourDateStop", style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Кол-во ночей", style: leftColumnStyle),
            Text("$numberOfNights ночей", style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Отель", style: leftColumnStyle),
            Text(hotelName, style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Номер", style: leftColumnStyle),
            Text(room, style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Питание", style: leftColumnStyle),
            Text(nutrition, style: rightColumnStyle),
          ]),
          const TableRow(children: [Text(""), Text("")]),
        ],
      ),
    );
  }
}

class CustomerInfo extends ConsumerWidget {
  double width;
  TextEditingController phoneController;
  TextEditingController emailController;

  CustomerInfo(
      {required this.width,
      required this.phoneController,
      required this.emailController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String phoneMascControll = phoneController.text;

    return Frame(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
            const Text(
              "Информация о покупателе",
              style: TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w500,
                  fontSize: 22),
            ),
            const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
            TextFormField(
              controller: phoneController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Введите ваш телефон";
                } else if (RegExp(
                        r'^\+?\d{1} ?\(?\d{3}\)?( |-)?\d{3}( |-)?\d{2}( |-)?\d{2} *$')
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "Данные введены некоректно";
                }
              },
              onTap: () {
                if (phoneController.text == "") {
                  phoneController.text = "+7 (***) ***-**-**";
                }
                int offset = phoneController.text.indexOf("*");
                phoneController.selection =
                    TextSelection.fromPosition(TextPosition(offset: offset));
              },
              onChanged: (s) {
                if (s.startsWith(
                    " ", phoneController.selection.extentOffset - 1)) {
                  phoneController.text = phoneMascControll;
                  s = phoneMascControll;
                }
                if (s.length >= 19) {
                  s = s.replaceFirst(RegExp(r"[0-9a-zA-Zа-яА-Я]"), "", 18);
                  phoneController.text = phoneController.text
                      .replaceFirst(RegExp(r"[0-9a-zA-Zа-яА-Я]"), "", 18);
                }
                if (s.length < phoneMascControll.length) {
                  if (phoneMascControll.startsWith(
                      "(", phoneController.selection.extentOffset)) {
                    phoneController.text = s.replaceFirst(
                        "", "(", phoneController.selection.extentOffset);
                  } else if (phoneMascControll.startsWith(
                      ")", phoneController.selection.extentOffset)) {
                    phoneController.text = s.replaceFirst(
                        "", ")", phoneController.selection.extentOffset);
                  } else if (phoneMascControll.startsWith(
                      " ", phoneController.selection.extentOffset)) {
                    s = phoneController.text.replaceFirst(
                        "", " ", phoneController.selection.extentOffset);
                    phoneController.selection = TextSelection.fromPosition(
                        TextPosition(
                            offset:
                                phoneController.selection.extentOffset - 2));
                    phoneController.text = s.replaceFirst(
                        RegExp(r"[0-9a-zA-Zа-яА-Я]"),
                        "*",
                        phoneController.selection.extentOffset);
                  } else if (phoneMascControll.startsWith(
                      "-", phoneController.selection.extentOffset)) {
                    s = phoneController.text.replaceFirst(
                        "", "-", phoneController.selection.extentOffset);
                    phoneController.selection = TextSelection.fromPosition(
                        TextPosition(
                            offset:
                                phoneController.selection.extentOffset - 1));
                    phoneController.text = s.replaceFirst(
                        RegExp(r"[0-9a-zA-Zа-яА-Я]"),
                        "*",
                        phoneController.selection.extentOffset);
                  } else {
                    phoneController.text = s.replaceFirst(
                        "", "*", phoneController.selection.extentOffset);
                  }
                }
                if (s.length > phoneMascControll.length) {
                  phoneController.text = s.replaceFirst(RegExp(r'\*'), '');
                }
                int offset = phoneController.text.indexOf("*");
                phoneController.selection =
                    TextSelection.fromPosition(TextPosition(offset: offset));
                if (phoneController.text.contains(RegExp(r'\*')) == false) {
                  phoneController.selection = TextSelection.fromPosition(
                      TextPosition(offset: phoneController.text.length));
                }
                phoneMascControll = phoneController.text;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                label: const Text(
                  "Номер телефона",
                  style: TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade100),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Введите ваш телефон";
                } else if (RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$')
                    .hasMatch(value)) {
                  return null;
                } else {
                  return "Данные введены некоректно";
                }
              },
              onChanged: (s) {
                emailController.text = s;
                emailController.selection = TextSelection.fromPosition(
                    TextPosition(offset: emailController.text.length));
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                label: const Text(
                  "Почта",
                  style: TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade100),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
            const Text(
              "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
              style: TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey),
            ),
            const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          ],
        ));
  }
}

// final openProvider = StateProvider((ref) {
//   bool? open;
//   open ??= true;
//   return open;
// });

class TouristsInfo extends StatefulWidget {
  double width;
  String number;
  bool open;


  TouristsInfo({Key? key, required this.width, required this.number, this.open = true})
      : super(key: key);

  @override
  State<TouristsInfo> createState() => _TouristsInfoState();
}



class _TouristsInfoState extends State<TouristsInfo> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _citizenshipController = TextEditingController();
  TextEditingController _passportNumberController = TextEditingController();
  TextEditingController _passportTermController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Widget child;
    Widget childOpened = Column(
      children: [
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.number} турист",
              style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: RawMaterialButton(
                fillColor: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  setState(() {
                    widget.open = false;
                  });
                },
                child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Image.asset(
                      "assets/icons/arrow_up_ios.png",
                      color: Colors.blue,
                    )),
              ),
            )
          ],
        ),
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        CustomTextFormField(controller: _nameController, text: "Имя"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
        CustomTextFormField(controller: _surnameController, text: "Фамилия"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
        CustomTextFormField(
            controller: _dateController, text: "Дата рождения"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
        CustomTextFormField(
            controller: _citizenshipController, text: "Гражданство"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
        CustomTextFormField(
            controller: _passportNumberController,
            text: "Номер загранпаспорта"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
        CustomTextFormField(
            controller: _passportTermController,
            text: "Срок действия загранпаспорта"),
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
      ],
    );
    Widget childClosed = Column(
      children: [
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.number} турист",
              style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: RawMaterialButton(
                fillColor: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  setState(() {
                    widget.open = true;
                  });
                },
                child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Image.asset(
                      "assets/icons/arrow_down_ios.png",
                      color: Colors.blue,
                    )),
              ),
            )
          ],
        ),
        const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
      ],
    );

    if(widget.open){
      child = childOpened;
    } else {
      child = childClosed;
    }

    return Frame(
      width: widget.width,
      child: child,
    );
  }
}

// class TouristInfo extends ConsumerWidget {
//   double width;
//   String number;
//
//   TouristInfo({required this.width, required this.number});
//
//
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _surnameController = TextEditingController();
//   TextEditingController _dateController = TextEditingController();
//   TextEditingController _citizenshipController = TextEditingController();
//   TextEditingController _passportNumberController = TextEditingController();
//   TextEditingController _passportTermController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     ref.watch(openProvider);
//     Widget child;
//     final open = ref.watch(openProvider.notifier).state;
//     if (open) {
//       child = Column(
//         children: [
//           const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "$number турист",
//                 style: const TextStyle(
//                     fontFamily: "SFPRODISPLAY",
//                     fontWeight: FontWeight.w500,
//                     fontSize: 22,
//                     color: Colors.black),
//               ),
//               SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: RawMaterialButton(
//                   fillColor: Colors.blue.shade100,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)),
//                   onPressed: () {
//                     ref.read(openProvider.notifier).state = false;
//                   },
//                   child: SizedBox(
//                       width: 15,
//                       height: 15,
//                       child: Image.asset(
//                         "assets/icons/arrow_up_ios.png",
//                         color: Colors.blue,
//                       )),
//                 ),
//               )
//             ],
//           ),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
//           CustomTextFormField(controller: _nameController, text: "Имя"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
//           CustomTextFormField(controller: _surnameController, text: "Фамилия"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
//           CustomTextFormField(
//               controller: _dateController, text: "Дата рождения"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
//           CustomTextFormField(
//               controller: _citizenshipController, text: "Гражданство"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
//           CustomTextFormField(
//               controller: _passportNumberController,
//               text: "Номер загранпаспорта"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 5)),
//           CustomTextFormField(
//               controller: _passportTermController,
//               text: "Срок действия загранпаспорта"),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
//         ],
//       );
//     } else {
//       child = Column(
//         children: [
//           const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "$number турист",
//                 style: const TextStyle(
//                     fontFamily: "SFPRODISPLAY",
//                     fontWeight: FontWeight.w500,
//                     fontSize: 22,
//                     color: Colors.black),
//               ),
//               SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: RawMaterialButton(
//                   fillColor: Colors.blue.shade100,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)),
//                   onPressed: () {
//                     ref.read(openProvider.notifier).state = true;
//                   },
//                   child: SizedBox(
//                       width: 15,
//                       height: 15,
//                       child: Image.asset(
//                         "assets/icons/arrow_down_ios.png",
//                         color: Colors.blue,
//                       )),
//                 ),
//               )
//             ],
//           ),
//           const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
//         ],
//       );
//     }
//     return Frame(
//       width: width,
//       child: child,
//     );
//   }
// }

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String text;

  CustomTextFormField({required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "Это поле обязательное";
        } else {
          return null;
        }
      },
      onChanged: (s) {
        controller.text = s;
        controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length));
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        label: Text(
          text,
          style: const TextStyle(
              fontFamily: "SFPRODISPLAY",
              fontWeight: FontWeight.w400,
              fontSize: 12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class AddTourist extends ConsumerWidget {
  double width;

  AddTourist({required this.width});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Frame(
      width: width,
      child: Column(
        children: [
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Добавить туриста",
                style: TextStyle(
                    fontFamily: "SFPRODISPLAY",
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.black),
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    ref.read(touristsNumberProvider.notifier).state += 1;
                  },
                  child: const Icon(Icons.add),
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsetsDirectional.only(top: 10)),
        ],
      ),
    );
  }
}

class Payment extends ConsumerWidget {
  double width;
  num tourPrice;
  num fuelCharge;
  num serviceCharge;

  Payment({
    required this.width,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Frame(
      width: width,
      child: Table(
        children: [
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text(
              "Тур",
              style: leftColumnStyle,
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Text("$tourPrice ₽", style: rightColumnStyle)),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Топливный сбор", style: leftColumnStyle),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Text("$fuelCharge ₽", style: rightColumnStyle)),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("Сервисный сбор", style: leftColumnStyle),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Text("$serviceCharge ₽", style: rightColumnStyle)),
          ]),
          const TableRow(children: [Text(""), Text("")]),
          TableRow(children: [
            Text("К оплате", style: leftColumnStyle),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: Text("${tourPrice + fuelCharge + serviceCharge} ₽",
                  style: const TextStyle(
                    fontFamily: "SFPRODISPLAY",
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                    color: Colors.blue,
                  )),
            ),
          ]),
          const TableRow(children: [Text(""), Text("")]),
        ],
      ),
    );
  }
}
