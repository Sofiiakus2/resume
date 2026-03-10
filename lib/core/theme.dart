import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const primaryColor = Color(0xFFE62E08);
const secondaryColor = Color(0xffFFD26B);
const backgroundPrimaryColor = Color(0xffE9E9ED);
const blurColor = Color(0xFF690007);
const shadowColor = Color(0xff5A2F31);

const textPrimaryColor = Color(0xffFFFFFF);
const textBlackColor = Color(0xff000000);

ThemeData lightTheme() => ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  textTheme: textDesktopTheme(),
  appBarTheme: AppBarTheme(
    color: backgroundPrimaryColor,
    scrolledUnderElevation: 0.0,
  ),
  dividerColor: textBlackColor,
  scaffoldBackgroundColor: Colors.transparent,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
);

TextTheme textDesktopTheme() => TextTheme(
  titleLarge: GoogleFonts.inter(
    fontSize: 250.sp,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    letterSpacing: -20.sp,
    height: 0.7,
    shadows: [
      Shadow(
        color: shadowColor.withOpacity(0.21),
        offset: Offset(12, 14),
        blurRadius: 2,
      ),
    ],
  ),
  titleMedium: GoogleFonts.inter(
    fontSize: 100.sp,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    letterSpacing: -10.sp,
    height: 1,
  ),
  titleSmall: GoogleFonts.inter(
    fontSize: 80.sp,
    fontWeight: FontWeight.w700,
    color: primaryColor,
    letterSpacing: -6.sp,
  ),
  labelLarge: GoogleFonts.inter(
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
    color: textPrimaryColor,
    letterSpacing: -3.sp,
  ),
  labelMedium: GoogleFonts.inter(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    color: primaryColor,
    letterSpacing: -2.sp,
    height: 1
  ),
  headlineLarge: GoogleFonts.inter(
    fontSize: 80.sp,
    fontWeight: FontWeight.w700,
    color: textBlackColor,
    letterSpacing: -8.sp,
  ),
  headlineMedium: GoogleFonts.inter(
    fontSize: 60.sp,
    fontWeight: FontWeight.w700,
    color: textPrimaryColor,
    letterSpacing: -5.sp,
  ),
  bodySmall: GoogleFonts.inter(
    fontSize: 48.sp,
    fontWeight: FontWeight.w300,
    color: textPrimaryColor,
    letterSpacing: -4.sp,
  ),
  bodyMedium: GoogleFonts.inter(
    fontSize: 50.sp,
    fontWeight: FontWeight.w400,
    color: textPrimaryColor,
    letterSpacing: -4.sp,
  ),
);