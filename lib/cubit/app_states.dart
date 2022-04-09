part of 'app_cubit.dart';

@immutable
abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppChangeThemeModeState extends AppStates {}

class AppChangeLanguage extends AppStates {}

class AppChangeTime extends AppStates {}

class AppChangeConnection extends AppStates {}

class SearchDialogChangeSelectedValue extends AppStates {}
