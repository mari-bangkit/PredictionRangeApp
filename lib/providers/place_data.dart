import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:yuk_mancing/Model/brand.dart';
import 'package:yuk_mancing/Model/categorydata.dart';
import 'package:yuk_mancing/Model/username.dart';

class Placesdata with ChangeNotifier {
  late String token;
  late String userid;
  late String name;
  List<Brand> tempat = [];
  List<Brand> TOYOTA = [];
  List<Brand> HONDA = [];
  List<Brand> MITSUBISHI = [];
  List<Brand> NISSAN = [];
  List<Brand> ISUZU = [];

  void updatedata(tokenData, uid, username) {
    token = tokenData;
    userid = uid;
    name = username;

    notifyListeners();
  }

  Future<void> getdataplace() async {
    Uri url = Uri.parse(
        "https://yukmancing-88624-default-rtdb.firebaseio.com/databrand.json?auth=$token");

    var hasilGetData = await http.get(url);
    // final DataTempat data = dataTempatFromJson(hasilGetData.body);
    final List<Brand> data = brandFromJson(hasilGetData.body);

    tempat = data;

    TOYOTA = data.where((element) => element.brand.contains("Toyota")).toList();
    HONDA = data.where((element) => element.brand.contains("Honda")).toList();
    MITSUBISHI =
        data.where((element) => element.brand.contains("Mitsubishi")).toList();
    NISSAN = data.where((element) => element.brand.contains("Nissan")).toList();
    ISUZU = data.where((element) => element.brand.contains("Isuzu")).toList();
    notifyListeners();
  }
}
