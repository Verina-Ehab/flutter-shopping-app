class AppUrls {
  AppUrls._();

  static const String websiteBaseUrl = "https://gamermajlis.com";

  // --- Content Specific Paths ---
  static const String clansPath =
      "/clans"; // https://gamermajlis.com/clans/{clanId}
  static const String tournamentsPath =
      "/tournaments"; // https://gamermajlis.com/tournaments/{tournamentId}
  static const String wagersPath =
      "/wagers"; // https://gamermajlis.com/wagers/{wagerId}
  static const String profilesPath =
      "/profiles"; // https://gamermajlis.com/profiles/{userId}

  // --- Helper methods to generate full URLs ---
  static String getClanShareUrl(int clanId) {
    return "$websiteBaseUrl$clansPath/$clanId";
  }

  static String getTournamentShareUrl(int tournamentId) {
    return "$websiteBaseUrl$tournamentsPath/$tournamentId";
  }

  static String getProfileShareUrl(String referal) {
    return "$websiteBaseUrl/$referal";
  }

  static String getWagerShareUrl(int wagerId) {
    return '$websiteBaseUrl$wagersPath/$wagerId';
  }
}
