import 'package:flutter/material.dart';

class BillingInfo extends StatefulWidget {
  const BillingInfo({super.key});

  @override
  State<BillingInfo> createState() => _BillingInfoState();
}

class _BillingInfoState extends State<BillingInfo> {
  String dropdownvalue = 'Item 1';
  var _currencies = ["Bussiness", "Residential"];
  var _currentSelectedValue;
  var _category;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Color.fromRGBO(12, 56, 61, 1.0)),
                ),
                title: const Text(
                  "Billing Information",
                  style: TextStyle(
                      color: Color.fromRGBO(12, 56, 61, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                elevation: 0,
                backgroundColor: const Color.fromRGBO(250, 250, 250, 1)),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Consumer Type *",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: FormField<String>(
                            builder: (FormFieldState<String> state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                    errorStyle: const TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 16.0),
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                                isEmpty: _currentSelectedValue == "",
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _currentSelectedValue,
                                    isDense: true,
                                    onChanged: (value) {
                                      setState(() {
                                        _currentSelectedValue = value;
                                        state.didChange(value);
                                      });
                                    },
                                    items: _currencies.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter email',
                                hintText: 'Enter your email'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Consumer name *",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter name',
                                hintText: 'Enter your name'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Bussiness Name *",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: 'Ent',
                                hintText: 'Enter your bussiness name'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tax ID *",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter tax id',
                                hintText: 'Enter yor Tax ID'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter phone number',
                                hintText: 'Enter your phone number'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 40),
                    child: Text(
                      "Customer Address",
                      style: TextStyle(
                          color: Color.fromRGBO(12, 56, 61, 1.0),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address Line*",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter address',
                                hintText: 'Enter your address'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "City",
                          style: TextStyle(
                              color: Color.fromRGBO(12, 56, 61, 1.0),
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter city',
                                hintText: 'Enter your city'),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
                child: Row(
              children: [
                const SizedBox(
                  width: 17,
                ),
                SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.93,
                    child: ElevatedButton(
                        onPressed: () {
                          // loc.text = "";
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(5, 51, 56, 1))),
                        child: const Text("Cancel"))),
                const SizedBox(
                  height: 70,
                )
              ],
            ))));
  }
}
