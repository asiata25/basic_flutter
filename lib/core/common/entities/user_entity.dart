class UserEntity {
  User? user;
  Session? session;

  UserEntity({
    this.user,
    this.session,
  });
}

class Session {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  int? expiresAt;
  String? refreshToken;
  User? user;

  Session({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.expiresAt,
    this.refreshToken,
    this.user,
  });

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        expiresAt: json["expires_at"],
        refreshToken: json["refresh_token"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );
}

class User {
  String? id;
  String? aud;
  String? role;
  String? email;
  DateTime? emailConfirmedAt;
  String? phone;
  DateTime? lastSignInAt;
  AppMetadata? appMetadata;
  UserMetadata? userMetadata;
  List<Identity>? identities;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.aud,
    this.role,
    this.email,
    this.emailConfirmedAt,
    this.phone,
    this.lastSignInAt,
    this.appMetadata,
    this.userMetadata,
    this.identities,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        aud: json["aud"],
        role: json["role"],
        email: json["email"],
        emailConfirmedAt: json["email_confirmed_at"] == null
            ? null
            : DateTime.parse(json["email_confirmed_at"]),
        phone: json["phone"],
        lastSignInAt: json["last_sign_in_at"] == null
            ? null
            : DateTime.parse(json["last_sign_in_at"]),
        appMetadata: json["app_metadata"] == null
            ? null
            : AppMetadata.fromJson(json["app_metadata"]),
        userMetadata: json["user_metadata"] == null
            ? null
            : UserMetadata.fromJson(json["user_metadata"]),
        identities: json["identities"] == null
            ? []
            : List<Identity>.from(
                json["identities"]!.map((x) => Identity.fromJson(x))),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );
}

class AppMetadata {
  String? provider;
  List<String>? providers;

  AppMetadata({
    this.provider,
    this.providers,
  });

  factory AppMetadata.fromJson(Map<String, dynamic> json) => AppMetadata(
        provider: json["provider"],
        providers: json["providers"] == null
            ? []
            : List<String>.from(json["providers"]!.map((x) => x)),
      );
}

class Identity {
  String? identityId;
  String? id;
  String? userId;
  IdentityData? identityData;
  String? provider;
  DateTime? lastSignInAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? email;

  Identity({
    this.identityId,
    this.id,
    this.userId,
    this.identityData,
    this.provider,
    this.lastSignInAt,
    this.createdAt,
    this.updatedAt,
    this.email,
  });

  factory Identity.fromJson(Map<String, dynamic> json) => Identity(
        identityId: json["identity_id"],
        id: json["id"],
        userId: json["user_id"],
        identityData: json["identity_data"] == null
            ? null
            : IdentityData.fromJson(json["identity_data"]),
        provider: json["provider"],
        lastSignInAt: json["last_sign_in_at"] == null
            ? null
            : DateTime.parse(json["last_sign_in_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        email: json["email"],
      );
}

class IdentityData {
  String? email;
  bool? emailVerified;
  bool? phoneVerified;
  String? sub;

  IdentityData({
    this.email,
    this.emailVerified,
    this.phoneVerified,
    this.sub,
  });

  factory IdentityData.fromJson(Map<String, dynamic> json) => IdentityData(
        email: json["email"],
        emailVerified: json["email_verified"],
        phoneVerified: json["phone_verified"],
        sub: json["sub"],
      );
}

class UserMetadata {
  UserMetadata();

  factory UserMetadata.fromJson(Map<String, dynamic> json) => UserMetadata();
}
