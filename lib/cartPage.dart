// import 'package:flutter/material.dart';
//
// class cart extends StatefulWidget {
//   const cart({Key? key}) : super(key: key);
//
//   @override
//   State<cart> createState() => _cartState();
// }
//
// class _cartState extends State<cart> {
//
//   int price = 0;
//   int qun = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     List s = ModalRoute.of(context)!.settings.arguments as List;
//
//     // if(price==0)
//     //   {
//     //     price = int.parse("${s['price']}");
//     //   }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Cart",
//           style: TextStyle(
//               fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
//         ),
//         actions: [
//           Container(
//             margin: const EdgeInsets.only(right: 8, top: 10),
//             height: 45,
//             width: 48,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: const Color(0xff22C093),
//               boxShadow: const [
//                 BoxShadow(
//                     blurRadius: 10, spreadRadius: 1, color: Color(0xffD4D3D1))
//               ],
//             ),
//             child: const Icon(
//               Icons.check_box_outlined,
//               color: Color(0xffECEBEA),
//             ),
//           )
//         ],
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: Container(
//         height: h,
//         width: w,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//               Color(0xffFFFFFF),
//               Color(0xff95928C),
//             ])),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//               children: s.map((e) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 margin: const EdgeInsets.all(10),
//                 height: 150,
//                 width: w,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.grey, width: 1),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                         flex: 1,
//                         child: Image(
//                           image: AssetImage("${e['image']}"),
//                           height: 80,
//                         )),
//                     const VerticalDivider(
//                       endIndent: 10,
//                       indent: 10,
//                       width: 1,
//                       thickness: 1,
//                       color: Colors.grey,
//                     ),
//                     Expanded(
//                         flex: 2,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Row(children: [
//                                 SizedBox(
//                                     height: 50,
//                                     width: 150,
//                                     child: Text("${e['description']}")),
//                                 IconButton(
//                                   onPressed: (){
//                                     setState(() {
//                                       s.remove(e);
//                                     });
//                                   },
//                                    icon:Icon(Icons.close,
//                                   size: 30,
//                                   color: Colors.grey.shade700,
//                                    ),
//
//                                 ),
//                               ]),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                   children: [
//                                 Container(
//                                   height: 40,
//                                   width: 120,
//                                   decoration: BoxDecoration(
//                                       color: Colors.white38,
//                                       border: Border.all(
//                                           color: Colors.deepOrange, width: 1)),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children:  [
//                                       Expanded(
//                                           child: Align(
//                                         child: InkWell(
//                                           onTap: (){
//                                             setState(() {
//                                               (qun > 1) ? qun-- : 1;
//                                               (price>0) ? price = price - int.parse(e['price']) : 0;
//                                               print(price);
//                                             });
//                                           },
//                                           child: const Text(
//                                             "-",
//                                             style: TextStyle(
//                                                 fontSize: 30,
//                                                 color: Colors.deepOrange),
//                                           ),
//                                         ),
//                                       )),
//                                       const VerticalDivider(
//                                         width: 1,
//                                         thickness: 1,
//                                         color: Colors.deepOrange,
//                                       ),
//                                        Expanded(
//                                           child: Align(
//                                         child: Text(
//                                           "$qun",
//                                           style: const TextStyle(
//                                               fontSize: 20,
//                                               color: Colors.deepOrange),
//                                         ),
//                                       )),
//                                       const VerticalDivider(
//                                         width: 1,
//                                         thickness: 1,
//                                         color: Colors.deepOrange,
//                                       ),
//                                       Expanded(
//                                           child: Align(
//                                         child: InkWell(
//                                           onTap: (){
//                                             setState(() {
//                                               qun++;
//                                               price = price + int.parse(e['price']) + price;
//                                               print(price);
//                                             });
//                                           },
//                                           child: const Text(
//                                             "+",
//                                             style: TextStyle(
//                                                 fontSize: 20,
//                                                 color: Colors.deepOrange),
//                                           ),
//                                         ),
//                                       )),
//                                     ],
//                                   ),
//                                 ),
//                                 Text(
//                                   "₹$price",
//                                   style: TextStyle(
//                                       fontSize: 17,
//                                       color: Colors.grey.shade700,
//                                   fontWeight: FontWeight.w600),
//                                 )
//                               ]),
//                             ],
//                           ),
//                         ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }).toList()),
//         ),
//       ),
//     );
//   }
// }
