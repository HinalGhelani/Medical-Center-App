import 'package:final_exam/Global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndx = 0;

  final pages = [const Page1(), const Page2(), const Page3(), const Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndx],
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndx = 0;
                });
              },
              icon: pageIndx == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Color(0xff22C093),
                      size: 30,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Color(0xffBBBDBE),
                      size: 25,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndx = 1;
                });
              },
              icon: pageIndx == 1
                  ? const Icon(
                      Icons.data_exploration,
                      color: Color(0xff22C093),
                      size: 30,
                    )
                  : const Icon(
                      Icons.data_exploration_outlined,
                      color: Color(0xffBBBDBE),
                      size: 25,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndx = 2;
                });
              },
              icon: pageIndx == 2
                  ? const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Color(0xff22C093),
                      size: 30,
                    )
                  : const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Color(0xffBBBDBE),
                      size: 25,
                    ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndx = 3;
                });
              },
              icon: pageIndx == 3
                  ? const Icon(
                      Icons.settings,
                      color: Color(0xff22C093),
                      size: 30,
                    )
                  : const Icon(
                      Icons.settings,
                      color: Color(0xffBBBDBE),
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List l = [
    {
      'image': "build/medicalApp/doctor1.png",
      'name': "Preeti Shah",
      'degree': "MBBS, FROS",
      'rate': "4.5",
      'fees': "250",
    },
    {
      'image': "build/medicalApp/doctor1.png",
      'name': "Preeti Jain",
    },
    {
      'image': "build/medicalApp/doctor1.png",
      'name': "Preeti Jain",
    },
    {
      'image': "build/medicalApp/doctor1.png",
      'name': "Preeti Shah",
      'degree': "MBBS, FROS",
      'rate': "4.5",
      'fees': "250",
    },
  ];

  @override
  int less = 0;
  int dialog = 0;

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        final willPop = await showDialog<bool>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  "Are you sure you want to exit?",
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context, true);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff25316D),
                      ),
                    ),
                    child: const Text("Yes"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context, false);
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff25316D),
                        ),
                      ),
                      child: const Text("No"))
                ],
              );
            });
        return willPop!;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.add),
          title: const Text(
            "Medico",
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: const Color(0xff22C093),
          elevation: 0,
          actions: [
            InkWell(
                onTap: () {
                  setState(() {});
                },
                child: const Icon(Icons.notifications)),
            const SizedBox(width: 15),
            InkWell(
                onTap: () {
                  setState(() {});
                },
                child: const Icon(Icons.account_circle_rounded)),
            const SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              (dialog == 0)
                  ? Container(
                      height: h / 2.9,
                      width: w,
                      color: const Color(0xff22C093),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.pushNamed(context, 'consult');
                                      });
                                    },
                                    child: Container(
                                      height: h / 10,
                                      width: w / 4.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff54D1AD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "build/medicalApp/Dr.tools.png",
                                        color: Colors.white,
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Video consult",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.pushNamed(context, 'doctor');
                                      });
                                    },
                                    child: Container(
                                      height: h / 10,
                                      width: w / 4.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff54D1AD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "build/medicalApp/nurse.png",
                                        color: Colors.white70,
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Hire A Nurse",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.pushNamed(
                                            context, 'medicine');
                                      });
                                    },
                                    child: Container(
                                        height: h / 10,
                                        width: w / 4.5,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff54D1AD),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Image.asset(
                                          "build/medicalApp/medicine.png",
                                          scale: 10,
                                          color: Colors.white70,
                                        )),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Medical Store",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: h / 10,
                                      width: w / 4.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff54D1AD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "build/medicalApp/ambulance.png",
                                        scale: 8,
                                        color: Colors.white70,
                                      )),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Ambulance",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: h / 10,
                                      width: w / 4.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff54D1AD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "build/medicalApp/search.png",
                                        scale: 5,
                                        color: Colors.white70,
                                      )),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Diagnostic",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              const SizedBox(width: 75)
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: h / 5.5,
                      width: w,
                      color: const Color(0xff22C093),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: h / 10,
                                    width: w / 4.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff54D1AD),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      "build/medicalApp/Dr.tools.png",
                                      color: Colors.white,
                                      scale: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Video consult",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: h / 10,
                                    width: w / 4.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff54D1AD),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      "build/medicalApp/nurse.png",
                                      color: Colors.white70,
                                      scale: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Hire A Nurse",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: h / 10,
                                      width: w / 4.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff54D1AD),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "build/medicalApp/medicine.png",
                                        scale: 10,
                                        color: Colors.white70,
                                      )),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Medical Store",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (less == 0)
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                print("less");
                                less = 1;
                                dialog = 1;
                              });
                            },
                            child: Container(
                              height: h / 17,
                              width: w / 2.9,
                              decoration: BoxDecoration(
                                color: const Color(0xff54D1AD),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Show Less",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.0),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              setState(() {
                                print("more");
                                less = 0;
                                dialog = 0;
                              });
                            },
                            child: Container(
                              height: h / 17,
                              width: w / 2.9,
                              decoration: BoxDecoration(
                                color: const Color(0xff54D1AD),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Show More",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.0),
                                    child: Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                  ],
                ),
                color: const Color(0xff22C093),
              ),
              SizedBox(height: h / 40),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white70,
                        Color(0xffD2D9D7),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  color: const Color(0xff22C093), width: 2),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Online",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff22C093),
                              ),
                            ),
                          ),
                          const Text(
                            "Doctors Available (300)",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: l.map((e) {
                            return Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: 290,
                              width: 320,
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 320,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: Colors.green,
                                      gradient: RadialGradient(
                                          center: Alignment(0, 0),
                                          colors: [
                                            Color(0xffFFFFFF),
                                            Color(0xff96938D),
                                          ],
                                          radius: 0.9),
                                    ),
                                    child: Image.asset("${e['image']}"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, right: 20),
                                    height: 90,
                                    width: 320,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. ${e['name']}",
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text("${e['degree']}"),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                ),
                                                Text(" ${e['rate']}"),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Rs. ${e['fees']}",
                                              style: const TextStyle(
                                                  fontSize: 25,
                                                  color: Color(0xff22C093),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Text(
                                              "/per call",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF2F2F2),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int indx = 0;
  String select = "";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Records",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffFFFFFF), Color(0xff95928C)])),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("build/medicalApp/doctor2.jpg"),
                    radius: 30,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Md.Fahim All",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Male, 29 years",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            indx = 0;
                            select = "book";
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Bookings",
                              style: TextStyle(
                                  decorationStyle: TextDecorationStyle.dashed,
                                  fontSize: 15,
                                  color: (select == "book")
                                      ? const Color(0xff22C093)
                                      : Colors.black87,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 2,
                              color: Color(0xff22C093),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            indx = 1;
                            select = "medicine";
                          });
                        },
                        child: Text(
                          "Medicines",
                          style: TextStyle(
                              fontSize: 15,
                              color: (select == "medicine")
                                  ? const Color(0xff22C093)
                                  : Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            indx = 2;
                            select = "pres";
                          });
                        },
                        child: Text(
                          "Prescriptions",
                          style: TextStyle(
                              fontSize: 15,
                              color: (select == "pres")
                                  ? const Color(0xff22C093)
                                  : Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            indx = 3;
                            select = "report";
                          });
                        },
                        child: Text(
                          "Reports",
                          style: TextStyle(
                              fontSize: 15,
                              color: (select == "report")
                                  ? const Color(0xff22C093)
                                  : Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: IndexedStack(
                  index: indx,
                  children: [
                    Column(
                      children: [
                        Image.asset("build/medicalApp/doctor1.png",
                            height: 200),
                        const SizedBox(height: 10),
                        const Text(
                          "You have no booking late.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Book a consultation and it will appear here.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("build/medicalApp/doctor1.png",
                            height: 200),
                        const SizedBox(height: 10),
                        const Text(
                          "You have no Medicine late.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Book a Medicine and it will appear here.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("build/medicalApp/doctor1.png",
                            height: 200),
                        const SizedBox(height: 10),
                        const Text(
                          "You have no Prescription late.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Book a Prescription and it will appear here.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("build/medicalApp/doctor1.png",
                            height: 200),
                        const SizedBox(height: 10),
                        const Text(
                          "You have no Report late.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Book a Report and it will appear here.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int price = 0;
  int qun = 1;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8, top: 10),
            height: 45,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff22C093),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10, spreadRadius: 1, color: Color(0xffD4D3D1))
              ],
            ),
            child: const Icon(
              Icons.check_box_outlined,
              color: Color(0xffECEBEA),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    children: GlobalVar.addtocart.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 150,
                          width: w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image(
                                    image: AssetImage("${e['image']}"),
                                    height: 80,
                                  )),
                              const VerticalDivider(
                                endIndent: 10,
                                indent: 10,
                                width: 1,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(children: [
                                        SizedBox(
                                            height: 50,
                                            width: 150,
                                            child: Text("${e['description']}")),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              GlobalVar.addtocart.remove(e);
                                            });
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            size: 30,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                  color: Colors.white38,
                                                  border: Border.all(
                                                      color: Colors.deepOrange,
                                                      width: 1)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Expanded(
                                                      child: Align(
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          (qun > 1) ? qun-- : 1;
                                                          // (price>0) ? price = price - int.parse(e['price']) : 0;
                                                          print(price);
                                                        });
                                                        e['total'] = int.parse(
                                                                e['price']) *
                                                            qun;
                                                        // print(GlobalVar.total);
                                                        GlobalVar.discount =
                                                            (e['total'] * 0.06);
                                                        GlobalVar.firstDis =
                                                            int.parse(e[
                                                                    'price']) *
                                                                0.06;
                                                        print(
                                                            GlobalVar.discount);
                                                        GlobalVar.pay =
                                                            (e['total'] -
                                                                GlobalVar
                                                                    .discount);
                                                        print(GlobalVar.pay);
                                                      },
                                                      child: const Text(
                                                        "-",
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: Colors
                                                                .deepOrange),
                                                      ),
                                                    ),
                                                  )),
                                                  const VerticalDivider(
                                                    width: 1,
                                                    thickness: 1,
                                                    color: Colors.deepOrange,
                                                  ),
                                                  Expanded(
                                                      child: Align(
                                                    child: Text(
                                                      "$qun",
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          color: Colors
                                                              .deepOrange),
                                                    ),
                                                  )),
                                                  const VerticalDivider(
                                                    width: 1,
                                                    thickness: 1,
                                                    color: Colors.deepOrange,
                                                  ),
                                                  Expanded(
                                                      child: Align(
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          qun++;
                                                          // price = price + int.parse(e['price']) + price;
                                                          print(price);
                                                        });
                                                        e['total'] = int.parse(
                                                                e['price']) *
                                                            qun;
                                                        // print(GlobalVar.total);
                                                        GlobalVar.discount =
                                                            (e['total'] * 0.06);
                                                        GlobalVar.firstDis =
                                                            int.parse(e[
                                                                    'price']) *
                                                                0.06;
                                                        print(
                                                            GlobalVar.discount);
                                                        GlobalVar.pay =
                                                            (e['total'] -
                                                                GlobalVar
                                                                    .discount);
                                                        print(GlobalVar.pay);
                                                      },
                                                      child: const Text(
                                                        "+",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color: Colors
                                                                .deepOrange),
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              (qun == 1)
                                                  ? "₹ ${e['price']}"
                                                  : "₹ ${e['total']}",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ]),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: GlobalVar.addtocart.map((e) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "CART BREAK DOWN",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff224855),
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Cart Total",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff224855),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  (qun == 1)
                                      ? "${e['price']}"
                                      : "₹${e['total']}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff224855),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Discount on MRP",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff224855),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  (qun == 1)
                                      ? "-₹${GlobalVar.firstDis.toStringAsPrecision(3)}"
                                      : "-₹${GlobalVar.discount.toStringAsPrecision(3)}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 0.6,
                              color: Colors.black54,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "To Pay",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff224855),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "₹${GlobalVar.pay}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff224855),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 45,
                              width: w,
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "You Saved ₹${GlobalVar.discount.toStringAsPrecision(3)} on this order!",
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 65,
                              width: w,
                              decoration: BoxDecoration(
                                color: Colors.teal.withOpacity(0.1),
                                borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Savings",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.teal,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.teal,
                                            size: 10,
                                          ),
                                          Text(
                                            "  Discount on MRP",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.teal.shade700,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "₹${GlobalVar.discount.toStringAsPrecision(3)}",
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            )
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 20, right: 20),
                height: 65,
                width: w,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Amount to Pay",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff224855),
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "₹${GlobalVar.pay}",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'donePage');
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Buy Now ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HEALTH RECORDS",
          style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              wordSpacing: 5),
        ),
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: h,
        width: w,
        color: const Color(0xffEDE9E1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h / 4.5,
                width: w,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 90, left: 20),
                      child: const CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Color(0xffFFFFFF),
                        ),
                        backgroundColor: Color(0xff224855),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              const Text(
                                "All Profiles",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Color(0xff224855),
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xffF70C0C)),
                                alignment: Alignment.center,
                                child: const Text(
                                  "New",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          "Access all health records \nfrom one place!",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff217896)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65,
                      width: w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.pages,
                                  color: Color(0xff224855),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Text(
                                  "Clinical Documents",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff224855)),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff224855),
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Health & Categories",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff224855),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 330,
                      width: w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pages,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Consult & Prescription",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pages,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Test Reports",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pages,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Hospitalization",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                          "build/medicalApp/condition.png"),
                                      height: 25,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Health Conditions",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                        "build/medicalApp/injection1.png",
                                      ),
                                      height: 30,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Vaccination",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "More From Health",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff224855),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 185,
                      width: w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pages,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Bills",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pages,
                                      color: Color(0xff224855),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Insurance",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff224855),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff224855),
                                  size: 20,
                                )
                              ],
                            ),
                            const Divider(thickness: 1, color: Colors.grey),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text("Delete"),
                                          content: const Text(
                                              "Are You sure you want to sign out?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                "CANCEL",
                                                style: TextStyle(
                                                    color: Color(0xff001253)),
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushNamedAndRemoveUntil(context, 'signup', (route) => false);
                                                  GlobalVar.signUpPassword.clear();
                                                  GlobalVar.password.clear();
                                                  GlobalVar.signUpEmail.clear();
                                                  GlobalVar.email.clear();
                                                  GlobalVar.uPassword = "";
                                                  GlobalVar.iPassword = "";
                                                  GlobalVar.uEmail = "";
                                                  GlobalVar.iEmail = "";
                                                },
                                                child: const Text(
                                                  "OK",
                                                  style: TextStyle(
                                                    color: Color(0xff001253),
                                                  ),
                                                ))
                                          ],
                                        );
                                      });
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.logout,
                                        color: Color(0xff224855),
                                      ),
                                      SizedBox(
                                        width: 18,
                                      ),
                                      Text(
                                        "Sign Out",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff224855),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xff224855),
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
