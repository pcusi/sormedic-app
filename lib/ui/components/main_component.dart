import 'package:flutter/material.dart';
import 'package:sormedic/theme/theme.dart';
import 'package:sormedic/ui/widgets/shared/sormedic_icon.dart';
import 'package:sormedic/ui/widgets/shared/text.dart';

class MainComponent extends StatefulWidget {
  MainComponent({Key? key}) : super(key: key);

  @override
  _MainComponentState createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(color: ThemeApp.kWhite),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  height: size.height * .08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Sormedic.bars,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: ThemeApp.kMain,
                        ),
                        child: Icon(
                          Icons.equalizer,
                          color: ThemeApp.kWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                TextGlobal(
                  value: 'Hola, Piero',
                  fontSize: 20.0,
                  fontFamily: 'ProximaNova',
                  fontColor: ThemeApp.kFontGray,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 8.0),
                TextGlobal(
                  value: 'Encuentra tu doctor',
                  fontSize: 24.0,
                  fontFamily: 'ProximaNova',
                  fontColor: ThemeApp.kFontDark,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 24.0),
                Container(
                  width: size.width,
                  height: size.height * .08,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: ThemeApp.kFontGray),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * .65,
                        height: 50.0,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: 0,
                            ),
                            border: InputBorder.none,
                            labelText: 'Busca tu doctor',
                            labelStyle: TextStyle(
                              color: ThemeApp.kFontGray,
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            prefixIcon: Icon(
                              Sormedic.search,
                              color: ThemeApp.kMain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: ThemeApp.kMain,
                        ),
                        child: Icon(
                          Sormedic.equalizer,
                          color: ThemeApp.kWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                Container(
                  width: size.width,
                  height: size.height * .25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: ThemeApp.kMain.withOpacity(.3),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.0,
                        bottom: 0.0,
                        right: -size.width * .05,
                        child: Image(
                          image: AssetImage('assets/img/1.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 16.0, bottom: 16.0,),
                        child: Column(
                          children: [
                            Container(
                              width: size.width * .30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextGlobal(
                                    value: 'Tu salud es nuestra prioridad',
                                    fontSize: 20.0,
                                    fontFamily: 'Poppins',
                                    fontColor: ThemeApp.kFontDark,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(height: 8.0),
                                  Container(
                                    width: 80.0,
                                    height: size.height * .05,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: ThemeApp.kMain,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: TextGlobal(
                                        value: 'Conectar',
                                        fontSize: 12.0,
                                        fontFamily: 'Poppins',
                                        fontColor: ThemeApp.kWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
