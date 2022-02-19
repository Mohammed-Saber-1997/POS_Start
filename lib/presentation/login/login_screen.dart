import 'package:flutter/material.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/presentation/home/home_screen.dart';
import 'package:pos_start/presentation/login/numeric_keyboard.dart';
import 'package:pos_start/presentation/src/color_manager.dart';
import 'package:pos_start/presentation/src/src.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginScreen> {
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the entered numbers
            Text(
              'Enter a Personal Password  to login',
              style: getSemiBoldStyle(
                color: AppCubit.get(context).isDark
                    ? ColorManager.white
                    : ColorManager.black,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: AppCubit.get(context).isDark
                      ? Colors.white10
                      : ColorManager.lightBackground,
                ),
                alignment: AlignmentDirectional.center,
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: _myController,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 40)
                      .copyWith(color: Colors.grey),
                  keyboardType: TextInputType.none,
                )),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Container(
            //     color: ColorManager.lightBackground,
            //     height: 70,
            //     child: Center(
            //         child: TextField(
            //       controller: _myController,
            //       textAlign: TextAlign.center,
            //       showCursor: false,
            //       style:
            //           const TextStyle(fontSize: 40).copyWith(color: Colors.grey),
            //       keyboardType: TextInputType.none,
            //     )),
            //   ),
            // ),
            NumericKeyboard(
              buttonColor: Colors.indigo,
              iconColor: Colors.indigo,
              controller: _myController,
              onDelete: () {
                _myController.text = _myController.text
                    .substring(0, _myController.text.length - 1);
              },
              // do something with the input numbers
              onSubmit: () {
                if (_myController.text.length != 0) {
                  print(_myController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
