import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  ThemeProvider({required dynamic isOn}) {
    themeMode = isOn == null
        ? ThemeMode.system
        : isOn == true
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  bool get isDarkMode => themeMode == ThemeMode.dark;

  Future<void> toggleTheme(bool isOn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (isOn) {
      themeMode = ThemeMode.dark;
      prefs.setBool('isDarkMode', true);
    } else {
      themeMode = ThemeMode.light;
      prefs.setBool('isDarkMode', false);
    }
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.indigo,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.indigo.shade200,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.indigo,
        primary: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.indigo,
        primary: Colors.black,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.white.withAlpha(700);
        },
      ),
      trackColor: MaterialStateProperty.all(Colors.white.withAlpha(400)),
    ),
    primaryColor: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.indigo,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.white;
        },
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.white;
        },
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: ShapeDecoration(
        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      actionTextColor: Colors.black,
    ),
  );

  static final lighTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light().copyWith(
      primary: Colors.indigo,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.indigo,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.indigo,
        primary: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.indigo,
        primary: Colors.white,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.white;
        },
      ),
      trackColor: MaterialStateProperty.all(Colors.black.withAlpha(400)),
    ),
    primaryColor: Colors.indigo,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.black;
        },
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          ;
          return Colors.black;
        },
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: ShapeDecoration(
        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      actionTextColor: Colors.white,
    ),
  );
}
