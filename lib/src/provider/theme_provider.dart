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
      primary: Colors.deepPurple,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.purple.shade200,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        primary: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        primary: Colors.black,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.deepPurple;
          }
          ;
          return Colors.white.withAlpha(700);
        },
      ),
      trackColor: MaterialStateProperty.all(Colors.white.withAlpha(400)),
    ),
    primaryColor: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.deepPurple,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurple,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.deepPurple;
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
            color: Colors.deepPurple,
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      actionTextColor: Colors.black,
    ),
    accentColor: Colors.black.withOpacity(0.4),
  );

  static final lighTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light().copyWith(
      primary: Colors.blue,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blue,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue[400],
        primary: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue[400],
        primary: Colors.white,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.blue;
          }
          ;
          return Colors.black.withAlpha(700);
        },
      ),
      trackColor: MaterialStateProperty.all(Colors.black.withAlpha(400)),
    ),
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.blue;
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
    accentColor: Colors.black.withOpacity(0.4),
  );
}
