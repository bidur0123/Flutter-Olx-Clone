import 'package:flutter/material.dart';

class CreatePass extends StatefulWidget {
  const CreatePass({super.key});

  @override
  State<CreatePass> createState() => _CreatePassState();
}

class _CreatePassState extends State<CreatePass> {
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
                  "Create Password",
                  style: TextStyle(
                      color: Color.fromRGBO(12, 56, 61, 1.0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                elevation: 0,
                backgroundColor: const Color.fromRGBO(250, 250, 250, 1)),
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Password'),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.94,
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Confirm new Password'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(children: [
                const SizedBox(
                  width: 17,
                ),
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.93,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(5, 51, 56, 1))),
                        child: const Text("Create password"))),
              ]),
            ])));
  }
}
