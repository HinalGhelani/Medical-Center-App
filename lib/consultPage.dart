import 'package:final_exam/Global.dart';
import 'package:flutter/material.dart';

class consultPage extends StatefulWidget {
  const consultPage({Key? key}) : super(key: key);

  @override
  State<consultPage> createState() => _consultPageState();
}

class _consultPageState extends State<consultPage> {
  int consult = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage("build/medicalApp/logo.png"),
          color: Color(0xff22C093),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on,
              size: 30,
              color: Color(0xff22C093),
            ),
            Text(
              "  ALL CITIES",
              style: TextStyle(fontSize: 15, color: Color(0xff224855)),
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.add_shopping_cart,
            color: Color(0xff224855),
            size: 30,
          ),
          SizedBox(width: 3),
          Icon(
            Icons.person,
            color: Color(0xff224855),
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 90,
              width: w,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: GlobalVar.search,
                  onChanged: (s) {
                    GlobalVar.searchDoctor = s;
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff224855),
                    ),
                    hintText: "Search for Doctors, Specialties or Symptoms",
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(color: Color(0xff224855), fontSize: 14),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                  enableSuggestions: true,
                ),
              ),
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade400),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              consult = 0;
                              print("0");
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                                color: (consult == 0)
                                    ? Colors.white
                                    : Color(0xffE8E8E8),
                                borderRadius: BorderRadius.circular(30)),
                            alignment: Alignment.center,
                            child: Text(
                              "HOSPITAL VISIT",
                              style: TextStyle(
                                  color: (consult == 0)
                                      ? Color(0xff22C093)
                                      : Colors.grey.shade800,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              consult = 1;
                              print("1");
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                                color: (consult == 1)
                                    ? Colors.white
                                    : const Color(0xffE8E8E8),
                                borderRadius: BorderRadius.circular(30)),
                            alignment: Alignment.center,
                            child: Text(
                              "VIDEO CONSULT",
                              style: TextStyle(
                                  color: (consult == 1)
                                      ? const Color(0xff22C093)
                                      : Colors.grey.shade800,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  (consult == 0)
                      ? Container(
                          height: 700,
                          width: w,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Top Specialties",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height: h / 6,
                                      width: w / 3.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc1.png")),
                                          Text(
                                            "General\nPhysician",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc2.png")),
                                          Text(
                                            "Obstetrics",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc3.png")),
                                          Text(
                                            "Urology",
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
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height: h / 6,
                                      width: w / 3.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc4.png")),
                                          Text(
                                            "Ears Nose\nthroat",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc5.png")),
                                          Text(
                                            "Orthopaedics",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc6.png")),
                                          Text(
                                            "Skin \nSpecialist",
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
                                const SizedBox(height: 50),
                                const Text(
                                  "Ask Medical Center",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Felling unwell? Tell us your symptoms for a quick assessment and get approciate care.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc1.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Cough",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc2.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Fever",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc3.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Head-\nache",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc4.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Sore\nthroat",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: w,
                                  decoration: BoxDecoration(
                                      color: Color(0xff22C093),
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Any other symptoms?",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          height: 1500,
                          width: w,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Top Specialties",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height: h / 6,
                                      width: w / 3.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc1.png")),
                                          Text(
                                            "General\nPhysician",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc2.png")),
                                          Text(
                                            "Obstetrics",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc3.png")),
                                          Text(
                                            "Urology",
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
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height: h / 6,
                                      width: w / 3.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc4.png")),
                                          Text(
                                            "Ears Nose\nthroat",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc5.png")),
                                          Text(
                                            "Orthopaedics",
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
                                          border: Border.all(
                                              color: const Color(0xff22C093)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Image(
                                              image: AssetImage(
                                                  "build/medicalApp/dc6.png")),
                                          Text(
                                            "Skin \nSpecialist",
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
                                const SizedBox(height: 50),
                                const Text(
                                  "Ask Medical Center",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Felling unwell? Tell us your symptoms for a quick assessment and get approciate care.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc1.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Cough",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc2.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Fever",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc3.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Head-\nache",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h / 9,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffE1E3E9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: const Alignment(0, -1.8),
                                        children: const [
                                          Image(
                                            image: AssetImage(
                                              "build/medicalApp/vc4.png",
                                            ),
                                            height: 50,
                                          ),
                                          Positioned(
                                            top: 45,
                                            child: Text(
                                              "Sore\nthroat",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 50,
                                  width: w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff22C093),
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Any other symptoms?",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
