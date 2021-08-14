import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider({required dynamic isOn}) {
    if (isOn == null) {
      defaultTheme = true;

      if (_brightness == Brightness.light) {
        themeMode = ThemeMode.light;
      } else {
        themeMode = ThemeMode.dark;
      }
    } else {
      isOn == true ? themeMode = ThemeMode.dark : themeMode = ThemeMode.light;
    }
  }

  ThemeMode themeMode = ThemeMode.system;
  final _brightness = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .platformBrightness;
  bool defaultTheme = false;
  final String _keyDarkMode = 'isDarkMode';

  bool get isDarkMode => themeMode == ThemeMode.dark;

  Future<void> toggleTheme({required bool isOn}) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    if (isOn) {
      themeMode = ThemeMode.dark;
      await preferences.setBool(_keyDarkMode, true);
    } else {
      themeMode = ThemeMode.light;
      await preferences.setBool(_keyDarkMode, false);
    }
    notifyListeners();
  }

  Future<void> removeTheme() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(_keyDarkMode);
    if (_brightness == Brightness.light) {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }
}

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: const ColorScheme.dark().copyWith(
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
        return Colors.white.withAlpha(700);
      },
    ),
    trackColor: MaterialStateProperty.all(Colors.white.withAlpha(400)),
  ),
  primaryColor: Colors.black,
  iconTheme: const IconThemeData(
    color: Colors.indigo,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigo,
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.indigo;
        }
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
        return Colors.white;
      },
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicator: ShapeDecoration(
      shape: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.indigo,
        ),
      ),
    ),
  ),
  snackBarTheme: const SnackBarThemeData(
    actionTextColor: Colors.black,
  ),
  primaryColorLight: Colors.black,
  primaryColorDark: Colors.black,
);

final lighTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light().copyWith(
    primary: Colors.indigo,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
        return Colors.white;
      },
    ),
    trackColor: MaterialStateProperty.all(Colors.black.withAlpha(400)),
  ),
  primaryColor: Colors.indigo,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigo,
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.indigo;
        }
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
        return Colors.black;
      },
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicator: ShapeDecoration(
      shape: UnderlineInputBorder(),
    ),
  ),
  snackBarTheme: const SnackBarThemeData(
    actionTextColor: Colors.white,
  ),
  primaryColorLight: Colors.indigo,
  primaryColorDark: Colors.indigo,
);
