import 'package:bookly_app/constants.dart';
import 'package:bookly_app/view/book_view.dart';
import 'package:bookly_app/view/home_view.dart';
import 'package:bookly_app/view/search_view.dart';
import 'package:bookly_app/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      getPages: [
        GetPage(
          name: SplashView.id,
          page: () => const SplashView(),
        ),
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
        ),
        GetPage(
          name: BookView.id,
          page: () => const BookView(),
        ),
        GetPage(
          name: SearchView.id,
          page: () => const SearchView(),
        ),
      ],
      initialRoute: SplashView.id,
    );
  }
}
