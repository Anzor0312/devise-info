import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urllouncher/provider/download_provider.dart';

class PdfViewPage extends StatelessWidget {
  const PdfViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => SettingsProvider(),
        builder: (BuildContext context, Widget? child) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: const Text("Saved file"),
                actions: [
                  IconButton(
                      onPressed: () {
                        context.read<SettingsProvider>().downloadFile(
                            url:
                                "https://p22-ma-ak.crpo.su/api/eticket_1253653760_TPLBS3.pdf");
                      },
                      icon: const Icon(Icons.download_outlined))
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                            blurRadius: 8,
                            offset: Offset(1, 2),
                            color: Colors.black54)
                      ]),
                  child: SizedBox(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // VISIT DATE
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Uchish vaqti",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(),
                              Text(
                                "Qo'nish vaqti",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "13.01.2024",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text("20:55:00",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              Text("4 soat 25 minutes",
                                  style: TextStyle(color: Colors.grey)),
                              Column(
                                children: [
                                  Text(
                                    "13.01.2024",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text("20:55:00",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Москва",
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(),
                              Text("Ташкент",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Flexible(
                                  child: Text("Biletni yuklab qilish")),
                              SizedBox(
                                width: 36,
                                height: 36,
                                child: FloatingActionButton(
                                    onPressed: () {
                                      if (Provider.of<SettingsProvider>(context,
                                              listen: false)
                                          .isDownloaded) {
                                        context
                                            .read<SettingsProvider>()
                                            .openPdfFile();
                                      } else {
                                        context
                                            .read<SettingsProvider>()
                                            .downloadFile(
                                                url:
                                                    "https://p22-ma-ak.crpo.su/api/eticket_1253653760_TPLBS3.pdf");
                                      }
                                    },
                                    child: Icon(Provider.of<SettingsProvider>(
                                                    context,
                                                    listen: false)
                                                .isDownloaded ==
                                            true
                                        ? Icons.file_present_rounded
                                        : Icons.download)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
