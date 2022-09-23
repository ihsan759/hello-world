import 'package:flutter/material.dart';

class Assets extends StatelessWidget {
  const Assets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 320,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100, left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hey Lord Oyen",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/photo.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.only(bottom: 40),
            margin: const EdgeInsets.only(left: 40, right: 40, top: 250),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "Halo Button",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  "Pencet Saya",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 180, 179, 179)),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 60, 176, 243))))),
                  child: Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      width: 200,
                      alignment: Alignment.center,
                      child: Row(
                        children: const [
                          Text(
                            "A B C",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 202, 202, 200)),
                          ),
                          Spacer(),
                          Text(
                            'Pesan Test Sekarang',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      )),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
