const userBaseUrl = 'user/base/url';

class APIRoutes {
  APIRoutes._();
  static User user = const User();
}

class User {
  const User();
  final String base = userBaseUrl;
}
