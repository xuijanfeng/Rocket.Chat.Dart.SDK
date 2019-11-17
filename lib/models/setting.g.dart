// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return Service(
    sId: json['_id'] as String,
    service: json['service'] as String,
    accessTokenParam: json['accessTokenParam'] as String,
    authorizePath: json['authorizePath'] as String,
    avatarField: json['avatarField'] as String,
    buttonColor: json['buttonColor'] as String,
    buttonLabelColor: json['buttonLabelColor'] as String,
    buttonLabelText: json['buttonLabelText'] as String,
    clientId: json['clientId'] as String,
    custom: json['custom'] as bool,
    identityPath: json['identityPath'] as String,
    identityTokenSentVia: json['identityTokenSentVia'] as String,
    loginStyle: json['loginStyle'] as String,
    mergeRoles: json['mergeRoles'] as bool,
    mergeUsers: json['mergeUsers'] as bool,
    nameField: json['nameField'] as String,
    rolesClaim: json['rolesClaim'] as String,
    scope: json['scope'] as String,
    serverURL: json['serverURL'] as String,
    showButton: json['showButton'] as bool,
    tokenPath: json['tokenPath'] as String,
    tokenSentVia: json['tokenSentVia'] as String,
    usernameField: json['usernameField'] as String,
  );
}

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      '_id': instance.sId,
      'service': instance.service,
      'accessTokenParam': instance.accessTokenParam,
      'authorizePath': instance.authorizePath,
      'avatarField': instance.avatarField,
      'buttonColor': instance.buttonColor,
      'buttonLabelColor': instance.buttonLabelColor,
      'buttonLabelText': instance.buttonLabelText,
      'clientId': instance.clientId,
      'custom': instance.custom,
      'identityPath': instance.identityPath,
      'identityTokenSentVia': instance.identityTokenSentVia,
      'loginStyle': instance.loginStyle,
      'mergeRoles': instance.mergeRoles,
      'mergeUsers': instance.mergeUsers,
      'nameField': instance.nameField,
      'rolesClaim': instance.rolesClaim,
      'scope': instance.scope,
      'serverURL': instance.serverURL,
      'showButton': instance.showButton,
      'tokenPath': instance.tokenPath,
      'tokenSentVia': instance.tokenSentVia,
      'usernameField': instance.usernameField,
    };
