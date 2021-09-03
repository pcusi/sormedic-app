import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sormedic/theme/theme.dart';
import 'package:sormedic/ui/widgets/shared/button.dart';
import 'package:sormedic/ui/widgets/shared/input.dart';
import 'package:sormedic/ui/widgets/shared/sormedic_icon.dart';
import 'package:sormedic/ui/widgets/shared/text.dart';

import 'main_component.dart';

class LoginComponent extends StatefulWidget {
  LoginComponent({Key? key}) : super(key: key);

  @override
  _LoginComponentState createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  late String _correo;
  late String _clave;

  login() {
    // ignore: unrelated_type_equality_checks
    if (_correo == "ejemplo@sormedic.com" && _clave == "12345") {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MainComponent()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(color: ThemeApp.kWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextGlobal(
              fontFamily: 'ProximaNova',
              value: 'Sormedic',
              fontSize: 24.0,
              fontColor: ThemeApp.kFontDark,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 24.0),
            Image(
              image: AssetImage('assets/img/2.png'),
              width: size.width,
              height: size.height * .35,
            ),
            InputGlobal(
              onChanged: (value) {
                _correo = value;
              },
              valueColor: ThemeApp.kFontDark,
              labelText: 'Correo',
              labelColor: ThemeApp.kFontGray,
              labelSize: 16.0,
              labelWeight: FontWeight.w500,
              hintText: 'ejemplo@sormedic.com',
              hintColor: ThemeApp.kFontDark,
              hintSize: 16.0,
              hintWeight: FontWeight.w500,
              underlineColor: ThemeApp.kMain,
              prefixIcon: Icon(
                Sormedic.email,
                color: ThemeApp.kMain,
              ),
            ),
            SizedBox(height: 12.0),
            InputGlobal(
              onChanged: (value) {
                _clave = value;
              },
              valueColor: ThemeApp.kFontDark,
              labelText: 'Contraseña',
              labelColor: ThemeApp.kFontGray,
              labelSize: 16.0,
              labelWeight: FontWeight.w500,
              hintText: '*********',
              hintColor: ThemeApp.kFontDark,
              hintSize: 16.0,
              hintWeight: FontWeight.w500,
              underlineColor: ThemeApp.kMain,
              isPassword: true,
              prefixIcon: Icon(
                Sormedic.lock,
                color: ThemeApp.kMain,
              ),
            ),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextGlobal(
                value: 'Olvidaste tu contraseña?',
                fontFamily: 'Poppins',
                fontSize: 12.0,
                fontColor: ThemeApp.kMain,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 24.0),
            ButtonGlobal(
              onTap: () => login(),
              buttonWidth: size.width * .65,
              buttonHeight: 65.0,
              buttonValueWeight: FontWeight.w500,
              buttonColor: ThemeApp.kMain,
              buttonValue: 'Iniciar sesión',
              buttonValueSize: 20.0,
              buttonValueColor: ThemeApp.kWhite,
            ),
            SizedBox(height: 48.0),
            RichText(
              text: TextSpan(
                text: 'No tienes una cuenta aún? ',
                style: TextStyle(
                  fontSize: 16.0,
                  color: ThemeApp.kFontGray,
                  fontFamily: 'Poppins',
                ),
                children: [
                  TextSpan(
                    text: 'Regístrate',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Estoy dando un touch");
                      },
                    style: TextStyle(
                      fontSize: 16.0,
                      color: ThemeApp.kFontDark,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
