// ignore_for_file: sort_constructors_first, public_member_api_docs

enum ThemeModeEnum {
  light('themeModeLight'),
  dark('themeModeDark'),
  system('themeModeSystem');
  final String value;
  const ThemeModeEnum(this.value);
}
