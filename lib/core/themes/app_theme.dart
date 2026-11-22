import 'package:material_ui/material_ui.dart';

abstract final class AppTheme {
  static const Color brandYellow = Color(0xFFFACC15);
  static const Color ink = Color(0xFF111827);
  static const Color mutedInk = Color(0xFF475569);
  static const Color pageBackground = Color(0xFFF8FAFC);
  static const Color outline = Color(0xFFCBD5E1);

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(
          seedColor: brandYellow,
          brightness: Brightness.light,
        ).copyWith(
          primary: brandYellow,
          onPrimary: ink,
          secondary: mutedInk,
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: ink,
          error: const Color(0xFFB91C1C),
        ),
    scaffoldBackgroundColor: pageBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: ink,
      centerTitle: false,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: outline),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: brandYellow, width: 2),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: brandYellow,
        foregroundColor: ink,
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    dividerTheme: const DividerThemeData(color: outline, thickness: 1),
  );
}
