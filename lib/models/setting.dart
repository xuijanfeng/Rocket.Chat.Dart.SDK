import 'package:json_annotation/json_annotation.dart';

import 'package:json_annotation/json_annotation.dart';

part 'setting.g.dart';

@JsonSerializable()
class Service {
  @JsonKey(name: '_id')
  String sId;
  @JsonKey(name: 'service')
  String service;
  @JsonKey(name: 'accessTokenParam')
  String accessTokenParam;
  @JsonKey(name: 'authorizePath')
  String authorizePath;
  @JsonKey(name: 'avatarField')
  String avatarField;
  @JsonKey(name: 'buttonColor')
  String buttonColor;
  @JsonKey(name: 'buttonLabelColor')
  String buttonLabelColor;
  @JsonKey(name: 'buttonLabelText')
  String buttonLabelText;
  @JsonKey(name: 'clientId')
  String clientId;
  @JsonKey(name: 'custom')
  bool custom;
  @JsonKey(name: 'identityPath')
  String identityPath;
  @JsonKey(name: 'identityTokenSentVia')
  String identityTokenSentVia;
  @JsonKey(name: 'loginStyle')
  String loginStyle;
  @JsonKey(name: 'mergeRoles')
  bool mergeRoles;
  @JsonKey(name: 'mergeUsers')
  bool mergeUsers;
  @JsonKey(name: 'nameField')
  String nameField;
  @JsonKey(name: 'rolesClaim')
  String rolesClaim;
  @JsonKey(name: 'scope')
  String scope;
  @JsonKey(name: 'serverURL')
  String serverURL;
  @JsonKey(name: 'showButton')
  bool showButton;
  @JsonKey(name: 'tokenPath')
  String tokenPath;
  @JsonKey(name: 'tokenSentVia')
  String tokenSentVia;
  @JsonKey(name: 'usernameField')
  String usernameField;

  Service(
      {this.sId,
      this.service,
      this.accessTokenParam,
      this.authorizePath,
      this.avatarField,
      this.buttonColor,
      this.buttonLabelColor,
      this.buttonLabelText,
      this.clientId,
      this.custom,
      this.identityPath,
      this.identityTokenSentVia,
      this.loginStyle,
      this.mergeRoles,
      this.mergeUsers,
      this.nameField,
      this.rolesClaim,
      this.scope,
      this.serverURL,
      this.showButton,
      this.tokenPath,
      this.tokenSentVia,
      this.usernameField});

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}
