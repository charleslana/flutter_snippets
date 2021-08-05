import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  final _brightness = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .platformBrightness;
  bool _defaultTheme = false;

  ThemeProvider({required dynamic isOn}) {
    if (isOn == null) {
      _defaultTheme = true;

      if (_brightness == Brightness.light) {
        themeMode = ThemeMode.light;
      } else {
        themeMode = ThemeMode.dark;
      }
    } else {
      isOn == true ? themeMode = ThemeMode.dark : themeMode = ThemeMode.light;
    }
  }

  bool get isDarkMode => themeMode == ThemeMode.dark;

  bool get defaultThemeSystem => _defaultTheme;

  void set defaultThemeSystem(bool value) => _defaultTheme = value;

  Future<void> toggleTheme(bool isOn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (isOn) {
      themeMode = ThemeMode.dark;
      preferences.setBool('isDarkMode', true);
    } else {
      themeMode = ThemeMode.light;
      preferences.setBool('isDarkMode', false);
    }
    notifyListeners();
  }

  Future<void> removeTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('isDarkMode');
    if (_brightness == Brightness.light) {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
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
