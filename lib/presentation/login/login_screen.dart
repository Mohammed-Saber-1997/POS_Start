import 'package:flutter/material.dart';
import 'package:pos_start/cour/app_prefs.dart';
import 'package:pos_start/presentation/home/home_screen.dart';
import 'package:pos_start/presentation/login/numeric_keyboard.dart';
import 'package:pos_start/presentation/src/src.dart';
import 'package:pos_start/cour/di.dart' as di;

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
      backgroundColor: di.instance<AppPreferences>().getData(key: 'isDark')
          ? ColorManager.darkBackground2
          : ColorManager.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the entered numbers
            Text(
              'Enter a Personal Password  to login',
              style: Theme.of(context).textTheme.headline2,
            ),
            Padding(
              padding: EdgeInsets.all(ResponsiveSize.w20),
              child: Container(
                height: ResponsiveSize.w70,
                width: ResponsiveSize.w400,
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          di.instance<AppPreferences>().getData(key: 'isDark')
                              ? ColorManager.grey
                              : Colors.transparent,
                      width: AppSize.s0_5),
                  color: ColorManager.loginTextFieldColor,
                ),
                alignment: AlignmentDirectional.center,
                child: Center(
                    child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: _myController,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: TextStyle(fontSize: ResponsiveSize.w40)
                      .copyWith(color: Colors.grey),
                  keyboardType: TextInputType.none,
                )),
              ),
            ),
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
                if (_myController.text.isNotEmpty) {
                  print(_myController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
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
