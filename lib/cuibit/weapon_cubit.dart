import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weapon/enums/game_enum.dart';
import 'package:weapon/enums/result_enum.dart';
part 'weapon_state.dart';
class WeaponCubit extends Cubit<WeaponState> {
  WeaponCubit() : super(WeaponInitial());
  static WeaponCubit get(context) => BlocProvider.of(context);
  GameEnum? userChoice;
  GameEnum? cpuChoice;
  int userCounter = 0;
  int cpuCounter = 0;
  ResultEnum? result;
  makeCpuChoice() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    cpuChoice = GameEnum.values[randomNumber];
  }
  calculateResult() {
    if (userChoice == GameEnum.rock) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.draw;
      } else if (cpuChoice == GameEnum.scissors) {
        result = ResultEnum.win;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.lose;
      }
    }
    if (userChoice == GameEnum.paper) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.win;
      } else if (cpuChoice == GameEnum.scissors) {
        result = ResultEnum.lose;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.draw;
      }
    }
    if (userChoice == GameEnum.scissors) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.lose;
      } else if (cpuChoice == GameEnum.scissors) {
        result = ResultEnum.draw;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.win;
      }
    }
  }

  calculateScore() {
    if (result == ResultEnum.win) {
      userCounter++;
    } else if (result == ResultEnum.lose) {
      cpuCounter++;
    } else if (result == ResultEnum.draw) {
      cpuCounter++;
      userCounter++;
    }
  }
}
