import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weapon/component/text_header.dart';
import 'package:weapon/cuibit/weapon_cubit.dart';
import 'package:weapon/scr/screens/home_screen.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: BlocConsumer<WeaponCubit, WeaponState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = WeaponCubit.get(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextHeader(
                    name: cubit.result!.name,
                    size: 15,
                    isBold: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextHeader(name: "User", size: 15),
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                                "images/${cubit.userChoice?.name}.png"))
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextHeader(name: "Cpu", size: 15),
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                                "images/${cubit.cpuChoice?.name}.png"))
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      cubit.calculateScore();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
