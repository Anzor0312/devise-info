import 'package:flutter/material.dart';
import 'package:urllouncher/extension/size_build_context_ext.dart';

class BookingCreatePage extends StatefulWidget {
  const BookingCreatePage({
    super.key,
  });

  @override
  State<BookingCreatePage> createState() => _BookingCreatePageState();
}

class _BookingCreatePageState extends State<BookingCreatePage> {
  String gender = "selectgender";
  String doctayp = "";
  String namber = "+998";
  String telNumber = "";
  String cityName = "Uzbekistan";
  String cityCode = "UZ";
  TextEditingController clientPhoneNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.height * 0.02, vertical: 24),
          child: ListView(children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      width: double.infinity,
                      height: context.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.grey, width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  onPressed: () {
                                    setState(() {
                                      gender = "M";
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Erkak",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                      gender == "M"
                                          ? const Icon(
                                              Icons.check_circle_outlined,
                                              color: Colors.black,
                                            )
                                          : const Icon(
                                              Icons.circle_outlined,
                                              color: Colors.black,
                                            )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.grey, width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  onPressed: () {
                                    setState(() {
                                      gender = "F";
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Ayol",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                      gender == "F"
                                          ? const Icon(
                                              Icons.check_circle_outlined,
                                              color: Colors.black,
                                            )
                                          : const Icon(
                                              Icons.circle_outlined,
                                              color: Colors.black,
                                            )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                  height: context.height * 0.062,
                  width: context.width * 0.4,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffAEAEAE), width: 1.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            gender == "F"
                                ? "Ayol"
                                : gender == "M"
                                    ? "Erkak"
                                    : gender,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        const Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                  )),
            )
          ])),
    );
  }
}
