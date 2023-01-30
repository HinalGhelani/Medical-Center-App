import 'package:flutter/material.dart';

class doctorHirePage extends StatefulWidget {
  const doctorHirePage({Key? key}) : super(key: key);

  @override
  State<doctorHirePage> createState() => _doctorHirePageState();
}

class _doctorHirePageState extends State<doctorHirePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hire a Doctor",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff22C093),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: const [
                Text(
                  "Book Consult with Expert Surgeons",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "   View all >",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(
                        image: AssetImage("build/medicalApp/cardio.png"),
                        height: 70,
                      ),
                      Text(
                        "Cardio-thoracic",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/neck.png"),
                      height: 70,
                      ),
                      Text(
                        "ENT,Head\nNeck",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/gastro.png"),
                      height: 60,
                      ),
                      Text(
                        "Surgical Gastro",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/knee.png")),
                      Text(
                        "Knee\nReplace",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/oncology.png")),
                      Text(
                        "Surgical Oncology",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/neuro.png"),
                      height: 60,),
                      Text(
                        "Neurosurgery",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/edocrine.png"),
                      height: 70,),
                      Text(
                        "Endocrine Surgery",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/general.png"),height: 70,),
                      Text(
                        "General Surgery",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: h / 6,
                  width: w / 3.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff22C093)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Image(image: AssetImage("build/medicalApp/spine.png"),height: 60,),
                      Text(
                        "Spine Surgery",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
