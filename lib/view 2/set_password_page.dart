import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:urllouncher/extension/size_build_context_ext.dart';
import 'package:urllouncher/provider.dart';

class SetPinCodePage extends StatelessWidget {
  const SetPinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => SetPinCodeProvider(),
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => SetPinCodeProvider(),
          builder: (context, child) {
            return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: context.height * 0.05),
                    child: Center(
                      child: Text(
                        "pin_code_installation",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            children: [
                              context.watch<SetPinCodeProvider>().error
                                  ? const Text(
                                      "enter_pin_code_confirm",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  : const Text(
                                      "Kiritilgan parollar mos emas ",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0;
                                      i <
                                          context
                                              .watch<SetPinCodeProvider>()
                                              .actives
                                              .length;
                                      i++)
                                    EnterPinCode(
                                      error: context
                                          .watch<SetPinCodeProvider>()
                                          .error,
                                      active: context
                                          .watch<SetPinCodeProvider>()
                                          .actives[i],
                                    ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0;
                                      i <
                                          context
                                              .watch<SetPinCodeProvider>()
                                              .confirmation
                                              .length;
                                      i++)
                                    EnterPinCode(
                                      error: context
                                          .watch<SetPinCodeProvider>()
                                          .error,
                                      active: context
                                          .watch<SetPinCodeProvider>()
                                          .confirmation[i],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        height: context.height * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color:const Color(
                                                          0xff999999), width: 3),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.3, crossAxisCount: 3),
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.all(4.0),
                            width: 52,
                            height: 52,
                            child: index == 9
                                ? const SizedBox()
                                : Center(
                                    child: index == 11
                                        ? IconButton(
                                            onPressed: () {
                                              context
                                                  .read<SetPinCodeProvider>()
                                                  .pinCodeEnter(index, context);
                                            },
                                            icon: Icon(
                                              Icons.backspace_outlined,
                                              size: context.width * 0.08,
                                            ))
                                        : Container(
                                            width: 64,
                                            height: 64,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: index == 9
                                                      ? Colors.black
                                                      : const Color(
                                                          0xff999999)),
                                            ),
                                            child: MaterialButton(
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          SetPinCodeProvider>()
                                                      .pinCodeEnter(
                                                          index, context);
                                                },
                                                minWidth: 52,
                                                height: 52,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32.0)),
                                                child: Text(
                                                  "${context.watch<SetPinCodeProvider>().numbers[index == 10 ? index - 1 : index]}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize:
                                                          context.width * 0.08,
                                                      color: Colors.black),
                                                )),
                                          ),
                                  ),
                          ),
                          itemCount: 12,
                        ),
                      )),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class EnterPinCode extends StatelessWidget {
  final bool active;
  final bool error;
  const EnterPinCode({super.key, this.active = false, required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: !error
                        ? const Color(0xff999999)
                        : active
                            ? const Color(0xff212640)
                            : const Color(0xff999999)),
                color: !error
                    ? Colors.white
                    : active
                        ? const Color(0xff212640)
                        : Colors.white,
              ),
            ),
          ],
        ));
  }
}
