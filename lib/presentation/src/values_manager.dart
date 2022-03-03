import 'package:pos_start/size_config.dart';

class AppMargin {
  static const double m8 = 8.0;
  static const double m12 = 12.0;
  static const double m14 = 14.0;
  static const double m16 = 16.0;
  static const double m18 = 18.0;
  static const double m20 = 20.0;
}

class AppPadding {
  static const double p0_5 = 0.5;
  static const double p1 = 1.0;
  static const double p5 = 5.0;
  static const double p6 = 6.0;
  static const double p8 = 8.0;
  static const double p10 = 10.0;
  static const double p12 = 12.0;
  static const double p14 = 14.0;
  static const double p15 = 15.0;
  static const double p16 = 16.0;
  static const double p18 = 18.0;
  static const double p20 = 20.0;
  static const double p23 = 23.0;
  static const double p25 = 25.0;
  static const double p28 = 28.0;
  static const double p30 = 30.0;
  static const double p35 = 35.0;
  static const double p40 = 40.0;
  static const double p100 = 100.0;
}

class AppSize {
  static const double s0 = 0;
  static const double s0_5 = 0.5;
  static const double s1 = 1;
  static const double s1_5 = 1.5;
  static const double s4 = 4.0;
  static const double s5 = 5.0;
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s25 = 25.0;
  static const double s28 = 28.0;
  static const double s30 = 30.0;
  static const double s40 = 40.0;
  static const double s45 = 45.0;
  static const double s50 = 50.0;
  static const double s55 = 55.0;
  static const double s60 = 60.0;
  static const double s65 = 65.0;
  static const double s70 = 70.0;
  static const double s80 = 80.0;
  static const double s90 = 90.0;
  static const double s100 = 100.0;
  static const double s110 = 110.0;
  static const double s120 = 120.0;
  static const double s140 = 140.0;
  static const double s150 = 150.0;
  static const double s165 = 165.0;
  static const double s170 = 170.0;
  static const double s190 = 190.0;
  static const double s180 = 180.0;
  static const double s200 = 200.0;
  static const double s214 = 214.0;
  static const double s300 = 300.0;
  static const double s400 = 400.0;
  static const double s500 = 500.0;
  static const double s550 = 550.0;
  static const double s600 = 600.0;
  static const double s700 = 700.0;
  static const double s750 = 750.0;
  static const double s800 = 800.0;
}

double changeToResponsiveWidth(double w) {
  var newValue = w / 10.8 * SizeConfig.widthMultiplier!.toDouble();
  return newValue;
}

double changeToResponsiveHeight(double h) {
  var newValue = h / 8.1 * SizeConfig.widthMultiplier!.toDouble();
  return newValue;
}

class ResponsiveSize {
  // according to
  static double w0_5 = changeToResponsiveWidth(0.5);
  static double w1 = changeToResponsiveWidth(1);
  static double w1_5 = changeToResponsiveWidth(1.5);
  static double w2 = changeToResponsiveWidth(2);
  static double w5 = changeToResponsiveWidth(5);
  static double w6 = changeToResponsiveWidth(6);
  static double w8 = changeToResponsiveWidth(8);
  static double w10 = changeToResponsiveWidth(10);
  static double w12 = changeToResponsiveWidth(12);
  static double w14 = changeToResponsiveWidth(14);
  static double w15 = changeToResponsiveWidth(15);
  static double w16 = changeToResponsiveWidth(16);
  static double w18 = changeToResponsiveWidth(18);
  static double w20 = changeToResponsiveWidth(20);
  static double w22 = changeToResponsiveWidth(22);
  static double w23 = changeToResponsiveWidth(23);
  static double w24 = changeToResponsiveWidth(24);
  static double w25 = changeToResponsiveWidth(25);
  static double w28 = changeToResponsiveWidth(28);
  static double w30 = changeToResponsiveWidth(30);
  static double w40 = changeToResponsiveWidth(40);
  static double w45 = changeToResponsiveWidth(45);
  static double w50 = changeToResponsiveWidth(50);
  static double w52 = changeToResponsiveWidth(52);
  static double w55 = changeToResponsiveWidth(55);
  static double w60 = changeToResponsiveWidth(60);
  static double w65 = changeToResponsiveWidth(65);
  static double w70 = changeToResponsiveWidth(70);
  static double w80 = changeToResponsiveWidth(80);
  static double w85 = changeToResponsiveWidth(85);
  static double w90 = changeToResponsiveWidth(90);
  static double w100 = changeToResponsiveWidth(100);
  static double w110 = changeToResponsiveWidth(110);
  static double w120 = changeToResponsiveWidth(120);
  static double w140 = changeToResponsiveWidth(140);
  static double w150 = changeToResponsiveWidth(150);
  static double w165 = changeToResponsiveWidth(165);
  static double w170 = changeToResponsiveWidth(170);
  static double w190 = changeToResponsiveWidth(190);
  static double w200 = changeToResponsiveWidth(200);
  static double w214 = changeToResponsiveWidth(214);
  static double w300 = changeToResponsiveWidth(300);
  static double w400 = changeToResponsiveWidth(400);
  static double w450 = changeToResponsiveWidth(450);
  static double w500 = changeToResponsiveWidth(500);
  static double w550 = changeToResponsiveWidth(550);
  static double w600 = changeToResponsiveWidth(600);
  static double w700 = changeToResponsiveWidth(700);
  static double w750 = changeToResponsiveWidth(750);
  static double w800 = changeToResponsiveWidth(800);

  // according to Height
  static double h400 = changeToResponsiveHeight(400);
}

class DurationConstant {
  static const int d300 = 300;
  static const int ds2 = 2;
}

const String EMPTY = "";
const num ZERO = 0;
