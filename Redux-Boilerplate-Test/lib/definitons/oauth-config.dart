abstract final class OauthConfig {
//# Rapider
  static const rapiderDiscoveryUrl =
      "https://rapider.auth0.com/.well-known/openid-configuration";
  static const rapiderClientId = "your_rapider_client_id";
  static const rapiderRedirectUrl = "your_rapider_redirect_url";
  static const rapiderLogoutUrl = "your_rapider_logout_url";

//# Google
  static const googleDiscoveryUrl =
      "https://accounts.google.com/.well-known/openid-configuration";
  static const googleClientId =
      "286942216621-6brkljrldsf6c3hjc6p1vqehaltuaun0.apps.googleusercontent.com";
  static const googleRedirectUrl = "com.example.njktest2:/oauth2redirect";
  static const googleLogoutUrl = "com.example.njktest2:/";

//# Descope
  static const descopeDiscoveryUrl =
      "https://api.descope.com/P2k10GWBu7QCAIowbm0wrqCLIVi7/.well-known/openid-configuration";
  static const descopeClientId = "P2k10GWBu7QCAIowbm0wrqCLIVi7";
  static const descopeRedirectUrl = "https://example.njktest2/oauth2redirect";
  static const descopeLogoutUrl = "com.example.njktest2:/";
}
