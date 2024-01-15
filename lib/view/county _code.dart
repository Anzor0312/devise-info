import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCode extends StatefulWidget {
  const CountryCode({super.key});

  @override
  State<CountryCode> createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {
  String namber = "";
  String telNumber = "";
  String cityName = "Uzbekistan";
  String cityCode = "UZ";
  TextEditingController clientPhoneNumController = TextEditingController();
  TextEditingController cityNameController = TextEditingController();
  bool avtofil = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountryPicker Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 56,
                child: TextFormField(
                  onTap: () {
                    // TextFormField bosilganda, davlatlarni tanlash oynasi ochiladi
                    _showCountryPickerDialog(context);
                  },
                  controller: cityNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    labelText: "Mamlakat",
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: avtofil,
                  onChanged: (value) {
                    telNumber = namber.replaceAll("+", "") +
                        clientPhoneNumController.text;
                    print(telNumber);
                  },
                  controller: clientPhoneNumController,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    prefixIcon: const SizedBox(
                        width: 10, height: 48, child: Center(child: Text("+"))),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    hintText: "telephone",
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Row(
                  children: [
                    CountryCodePicker(
                      hideMainText: false,
                      showDropDownButton: true,
                      enabled: true,
                      onChanged: (c) {
                        setState(() {
                          cityName = c.name.toString();
                          cityCode = c.code.toString();
                        });
                      },
                      initialSelection: 'UZ',
                      showFlag: true,
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: true,
                    ),
                    Text(
                      cityName,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  String selectedCountryCode = '';
  void _showCountryPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Mamlakatni tanlang'),
          content: SizedBox(
            width: double.maxFinite,
            child: CountryCodePicker(
              onChanged: (countryCode) {
                // Tanlangan mamlakat kodi saqlanadi
                cityNameController.text = "${countryCode.name}";
                namber = countryCode.dialCode.toString();

                telNumber = namber.replaceAll("+", "");
                clientPhoneNumController.text = telNumber;
                print(telNumber);
                avtofil = true;
                // AlertDialogni yopish
                Navigator.pop(context);
              },
              // Boshlang'ich mamlakat kodi (masalan, AQSH)
              initialSelection:
                  selectedCountryCode.isNotEmpty ? selectedCountryCode : 'US',
              favorite: const ['+1', 'US'],
              showFlagDialog: true,
              showFlag: true,
              showOnlyCountryWhenClosed: false,
            ),
          ),
        );
      },
    );
  }
}
