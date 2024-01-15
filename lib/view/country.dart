// ignore_for_file: deprecated_member_use

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCodePickerExample extends StatefulWidget {
  const CountryCodePickerExample({super.key});

  @override
  _CountryCodePickerExampleState createState() =>
      _CountryCodePickerExampleState();
}

class _CountryCodePickerExampleState extends State<CountryCodePickerExample> {
  String selectedCountryCode = '';
  String selectedCountryName = '';
  TextEditingController cityNamecontroller = TextEditingController();
  TextEditingController cityDialCodecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Code Picker Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              readOnly: true,
              onTap: () {
                showCountryCodePicker();
              },
              decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      labelText: "Country",
                    ),
              controller: cityNamecontroller,
            ),const SizedBox(height: 12,),
            TextFormField(
              controller: cityDialCodecontroller,
              onChanged: (countryDialCode) {
                if (countryDialCode.isEmpty) {
                  setState(() {
                    cityNamecontroller.text = "";
                  });
                }
        
                updateCountryName(countryDialCode);
                setState(() {
                  cityNamecontroller.text = selectedCountryName;
                });
              },
              decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void showCountryCodePicker() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Country Code'),
          content: CountryCodePicker(
            onChanged: (countryCode) {
              setState(() {
                selectedCountryCode = countryCode.dialCode ?? "";
                selectedCountryName = countryCode.name ?? "";
                cityDialCodecontroller.text = selectedCountryCode;
                cityNamecontroller.text = selectedCountryName;
              });
              Navigator.of(context).pop();
            },
            initialSelection: selectedCountryCode,
          ),
        );
      },
    );
  }

  void updateCountryName(String countryDialCode) {
    String countryCode = CountryCode.fromDialCode(countryDialCode).code ?? "";
    if (countryCode.isNotEmpty) {
      setState(() {
        selectedCountryCode = countryCode;
        selectedCountryName = CountryCode.fromCode(countryCode).name ?? "";
      });
    }
  }
}
