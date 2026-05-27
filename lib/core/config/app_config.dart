/// Production configuration для приложения
class AppConfig {
  // API Configuration
  static const String apiBaseUrl = 'http://v70720eb.beget.tech/proxy.php';
  static const Duration apiTimeout = Duration(seconds: 20);
  static const int apiRetryCount = 3;
  static const Duration apiRetryDelay = Duration(seconds: 1);

  // Window Configuration
  static const String appName = 'HyMix';
  static const double minWindowWidth = 800;
  static const double minWindowHeight = 500;
  static const double defaultWindowWidth = 1200;
  static const double defaultWindowHeight = 700;

  // Audio Configuration
  static const List<String> supportedAudioFormats = ['.mp3', '.wav', '.m4a', '.flac', '.aac'];
  static const int maxAudioBitrate = 320; // kbps
  static const int audioBufferSize = 8192;

  // UI Configuration
  static const int itemsPerPage = 20;
  static const Duration debounceDelay = Duration(milliseconds: 500);
  static const Duration animationDuration = Duration(milliseconds: 300);

  // Cache Configuration
  static const int maxCacheSize = 500; // MB
  static const Duration cacheExpiration = Duration(days: 30);

  // Logging
  static const bool enableDetailedLogs = false;
  static const bool enableNetworkLogging = false;

  // Feature Flags
  static const bool enableDownloads = true;
  static const bool enablePlaylistSharing = true;
  static const bool enableOfflineMode = true;
}
