import 'package:flutter/material.dart';

class UserData {
  //put in different file
  String name = '';
  double weight = 0;
  int heightInFT = 0;
  int heightInIN = 0;
  double heightInCM = 0;
  double goalWeight = 0;
  String gender = '';
  double calorieLimit = 1500;
  double fatLimit = 50;
  double sodiumLimit = 100;
  double waterLimit = 80;
  double sugarLimit = 0;
  int age = 0;
  int curCal = 0;
  int curFat = 0;
  int curSodium = 0;
  int curWater = 0;
  int curSugar = 0;

  UserData();

  setSugar() {
    sugarLimit = calorieLimit * 10;
  }

  updateCalories(int addedCal) {
    curCal = curCal + addedCal;
  }

  updateFat(int addedFat) {
    curFat = curFat + addedFat;
  }

  updateSoduim(int addedSod) {
    curSodium = curSodium + addedSod;
  }

  updateSugar(int addedSugar) {
    curSugar = curSugar + addedSugar;
  }

  updateWater(int addedWater) {
    curWater = curWater + addedWater;
  }

  convertHeight() {
    heightInCM = heightInFT * 12;
    heightInCM += heightInIN;
    heightInCM *= 2.54;
  }
}
