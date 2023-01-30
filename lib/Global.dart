import 'package:flutter/material.dart';

class GlobalVar {

  // Sign Up

  static GlobalKey<FormState> signUp = GlobalKey<FormState>();
  static TextEditingController signUpEmail = TextEditingController();
  static String uEmail = "";
  static TextEditingController signUpPassword = TextEditingController();
  static String uPassword = "";

  // LogIn page

  static GlobalKey<FormState> login = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static String iEmail = "";
  static TextEditingController password = TextEditingController();
  static String iPassword = "";

  //  consult Page
  static TextEditingController search = TextEditingController();
  static String searchDoctor = "";
  static TextEditingController mSearch = TextEditingController();
  static String searchMedicine = "";

  static int cart = 0;
  static List addtocart = [];

  // medicine store
  static List l = [
    {
      'name': "Apollo \nProducts",
      'icon': "build/medicalApp/logo.png",
    },
    {'name': "Baby\nCare", 'icon': "build/medicalApp/m1.png"},
    {'name': "Health\nNutrition", 'icon': "build/medicalApp/m2.png"},
    {'name': "Women\nCare", 'icon': "build/medicalApp/m4.png"},
    {'name': "Personal\nCare", 'icon': "build/medicalApp/m5.png"},
    {'name': "Ayurveda", 'icon': "build/medicalApp/m6.png"},
    {'name': "Health\nDevices", 'icon': "build/medicalApp/m7.png"},
    {'name': "Home\nEssentials", 'icon': "build/medicalApp/m8.png"},
    {'name': "Health\nCondition", 'icon': "build/medicalApp/m9.png"},
    {'name': "Covid\nEssentials", 'icon': "build/medicalApp/m10.png"},
  ];

  static List<Map<String,dynamic>> medicine = [
    {
      'image' : "build/medicalApp/medicine1.png",
      'description' : "ORS Orange Flavour Powder, 21.8 gm",
      'price' : "18",
      'cashback' : "1.8",
      'name' : 'ors orange',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine2.png",
      'description' : "ORS Lemon Flavour Powder, 21.8 gm",
      'price' : "18",
      'cashback' : "1.8",
      'cart' : '0',
      'name' : 'ors green',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine3.png",
      'description' : "Nivea Cocoa Nourish Body Lotion, 400 ml",
      'price' : "459",
      'cashback' : "45.9",
      'cart' : '0',
      'name' : 'body lotion',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine4.png",
      'description' : "Tranquillonin White Capsules Pharmaceutical Medicine",
      'price' : "299",
      'cashback' : "29.9",
      'cart' : '0',
      'name' : 'capsules',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine5.png",
      'description' : "Hydroquinone, tretinoin & Mometasone Furoate Cream, 20g.",
      'price' : "200",
      'cashback' : "20.0",
      'cart' : '0',
      'name' : 'cream',
      'total' : 0,

    },
    {
      'image' : "build/medicalApp/medicine6.png",
      'description' : "Leekuf Natural, Cough Syrup, 100ml",
      'price' : "155",
      'cashback' : "15.55",
      'cart' : '0',
      'name' : 'syrup',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine7.png",
      'description' : "Himalaya Herbals, Nourishing Skin Cream, 50ml",
      'price' : "260",
      'cashback' : "26.0",
      'cart' : '0',
      'name' : 'himalaya',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine8.png",
      'description' : "Moov Advance, DICLOFENAC Gel, 100 ml",
      'price' : "180",
      'cashback' : "18.0",
      'cart' : '0',
      'name' : 'moov',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine9.png",
      'description' : "D.O.F 4X Gel, Diclofenac Gel BP 4% w/w, 50g",
      'price' : "150",
      'cashback' : "15.0",
      'cart' : '0',
      'name' : 'gel',
      'total' : 0,
    },
    {
      'image' : "build/medicalApp/medicine10.png",
      'description' : "Himalaya Moisturising Aloe Vera Face Wash, 100ml",
      'price' : "210",
      'cashback' : "21.10",
      'cart' : '0',
      'name' : 'face wash',
      'total' : 0,
    },
  ];

  static int total = 0;
  static double discount = 0;
  static double firstDis = 0;
  static double pay = 0;
}