import 'package:flutter/material.dart';
import 'Global.dart';

class medicinePage extends StatefulWidget {
  const medicinePage({Key? key}) : super(key: key);

  @override
  State<medicinePage> createState() => _medicinePageState();
}

class _medicinePageState extends State<medicinePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff22C093),
            ),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            }),
        title: const Text(
          "Medicines Store",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff22C093),
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              width: double.infinity,
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: GlobalVar.mSearch,
                    onChanged: (s) {
                      GlobalVar.searchMedicine = s;
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
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Image(
                                image: AssetImage(
                                    "build/medicalApp/medicineOrder.png"),
                                color: Color(0xff224855),
                                height: 20,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "My Orders",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff224855)),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Color(0xff224855),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      width: 350,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 220,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "build/medicalApp/medicines-offers.jpg"))),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 200,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "build/medicalApp/medicines-offers1.webp"))),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 200,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "build/medicalApp/medicines-offers2.png"))),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 200,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "build/medicalApp/medicines-offers3.jpg"))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SHOP BY CATEGORY",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff224855),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                      color: Color(0xff224855),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: GlobalVar.l.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(6),
                            child: Container(
                              height: 70,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "${e['icon']}",
                                    height: 40,
                                  ),
                                  // SizedBox(width: 20),
                                  Text(
                                    "${e['name']}\n",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "EXPLORE - POPULAR PRODUCTS",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff224855),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "VIEW ALL",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      height: 1,
                      color: Color(0xff224855),
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: GlobalVar.medicine.map((e) {
                          return (GlobalVar.searchMedicine!="")
                              ? (e['description'] == GlobalVar.searchMedicine ||
                          e['name'] == GlobalVar.searchMedicine.toLowerCase()) ?
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 230,
                              width: 155,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "${e['image']}"),
                                      height: 70,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "${e['name']}",
                                      style: const TextStyle(
                                          fontSize: 13, color: Color(0xff224855),fontWeight: FontWeight.w400),
                                    ),

                                    Text(
                                      "${e['description']}",
                                      style: const TextStyle(
                                          fontSize: 10, color: Color(0xff224855),fontWeight: FontWeight.w400),
                                    ),
                                    const Divider(
                                      color: Color(0xff224855),
                                      height: 1,
                                    ),
                                    Text(
                                      "₹${e['price']}",
                                      style: const TextStyle(
                                          fontSize: 11, color: Color(0xff224855),fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "cashback: ${e['cashback']} HCs",
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff224855),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if(e['cart'] == 1){
                                            0;
                                          }
                                          else{
                                            GlobalVar.addtocart.add(e);
                                          }
                                          Navigator.pushNamed(context, 'page3');
                                          print("11");
                                        });
                                      },
                                      child: const Text(
                                        "ADD TO CART",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          : Container()
                          :Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 230,
                              width: 155,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "${e['image']}"),
                                      height: 70,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "${e['name']}",
                                      style: const TextStyle(
                                          fontSize: 13, color: Color(0xff224855),fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "${e['description']}",
                                      style: const TextStyle(
                                          fontSize: 10, color: Color(0xff224855),fontWeight: FontWeight.w400),
                                    ),
                                    const Divider(
                                      color: Color(0xff224855),
                                      height: 1,
                                    ),
                                    Text(
                                      "₹${e['price']}",
                                      style: const TextStyle(
                                          fontSize: 11, color: Color(0xff224855),fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "cashback: ${e['cashback']} HCs",
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: Color(0xff224855),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                            GlobalVar.addtocart.add(e);
                                          Navigator.pushNamed(context, 'page3');
                                          print("11");
                                        });
                                      },
                                      child: const Text(
                                        "ADD TO CART",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffEDE9E1),
    );
  }
}
