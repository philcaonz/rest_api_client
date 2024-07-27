class AuthOptions {
  final bool useSecureStorage;
  final String? baseUrl;
  final String authenticationEndpoint;
  final Map<String, dynamic>? authenticationEndpointQueryParams;
  final String refreshTokenEndpoint;
  final Map<String, dynamic>? refreshTokenEndpointQueryParams;
  final String refreshTokenParameterName;
  final String Function(dynamic response)? resolveJwt;
  final String Function(dynamic response)? resolveRefreshToken;
  final dynamic Function(String jwt, String refreshToken)?
      refreshTokenBodyBuilder;
  final Map<String, dynamic>? Function(String jwt, String refreshToken)?
      refreshTokenHeadersBuilder;

  const AuthOptions({
    this.useSecureStorage = true,
    this.baseUrl,
    this.authenticationEndpoint = '',
    this.authenticationEndpointQueryParams,
    this.refreshTokenEndpoint = '',
    this.refreshTokenEndpointQueryParams,
    this.refreshTokenParameterName = '',
    this.resolveJwt,
    this.resolveRefreshToken,
    this.refreshTokenBodyBuilder,
    this.refreshTokenHeadersBuilder,
  });
}
