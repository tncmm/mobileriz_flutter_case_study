class ApplicationConstants {
  static ApplicationConstants? _instance;

  static ApplicationConstants get instance =>
      _instance ??= ApplicationConstants._init();

  ApplicationConstants._init();

  String get appName => "AI Story";
  String get fontFamily => "Chirp";

  String get assetPath => 'assets/';
}
