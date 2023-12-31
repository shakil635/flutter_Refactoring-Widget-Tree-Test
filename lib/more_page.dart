import 'package:flutter/material.dart';

class MoreAbout extends StatelessWidget {
 MoreAbout({super.key});
  List<String> imagePath = [
    "assete/images1.jpg",
    "assete/images2.jpg",
    "assete/images3.jpg",
    "assete/images4.jpg",
    "assete/images5.jpg",
    "assete/images6.jpg",
    "assete/images7.jpg",
    "assete/images8.jpg",
    "assete/images9.jpg",
    "assete/images10.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Happy New year photo"),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: imagePath.length,
          gridDelegate:
           const   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Card(
                      shadowColor: Colors.grey,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Image.asset(imagePath[index], fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
              )),
    ));
  }
}
