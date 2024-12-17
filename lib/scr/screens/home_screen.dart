import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weapon/cuibit/weapon_cubit.dart';
import 'package:weapon/enums/game_enum.dart';
import 'package:weapon/scr/screens/result_screen.dart';
import '../../component/counter_result.dart';
import '../../component/text_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: Center(
        child: BlocConsumer<WeaponCubit, WeaponState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = WeaponCubit.get(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextHeader(
                  name: "ROCK",
                  size: 25,
                  isBold: true,
                ),
                const TextHeader(
                  name: "PAPER",
                  size: 25,
                  isBold: true,
                ),
                const TextHeader(
                  name: "SCISSORS",
                  size: 25,
                  isBold: true,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextHeader(
                    name: "Pick Your Weapon",
                    size: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    cubit.userChoice = GameEnum.paper;
                    cubit.makeCpuChoice();
                    cubit.calculateResult();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultScreen(),
                      ),
                      (route) => false,
                    );
                    if (kDebugMode) {
                      print(cubit.userChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.cpuChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.result);
                    }
                  },
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/paper.png")),
                ),
                GestureDetector(
                  onTap: () {
                    cubit.userChoice = GameEnum.rock;
                    cubit.makeCpuChoice();
                    cubit.calculateResult();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultScreen(),
                      ),
                      (route) => false,
                    );
                    if (kDebugMode) {
                      print(cubit.userChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.cpuChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.result);
                    }
                  },
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/rock.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    cubit.userChoice = GameEnum.scissors;
                    cubit.makeCpuChoice();
                    cubit.calculateResult();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultScreen(),
                      ),
                      (route) => false,
                    );
                    if (kDebugMode) {
                      print(cubit.userChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.cpuChoice);
                    }
                    if (kDebugMode) {
                      print(cubit.result);
                    }
                  },
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("images/scissors.png"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CounterResult(name: "User", counter: cubit.userCounter),
                    CounterResult(name: "Cpu", counter: cubit.cpuCounter)
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
