import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halo saya latihan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text('Saya Widget ditengah', style: TextStyle(fontSize: 25)),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 223, 88, 10),
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Saya kiri",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Saya kanan",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.yellow),
                color: Colors.purple,
              ),
              child: const Text(
                'Saya bewarna',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Saya dibawah sendiri",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(), primary: Colors.yellow),
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const Text(
                      'A B C',
                      style: TextStyle(fontSize: 8, color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
