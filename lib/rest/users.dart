part of rest;

abstract class _ClientUsersMixin implements _ClientWrapper {
  Future<void> login(UserCredentials credentials) {
    Completer<void> completer = Completer();
    http
        .post('${_getUrl()}/login',
            headers: {
              'Content-Type': 'application/json',
            },
            body: json.encode(<String, String>{
              'user': credentials.name,
              'password': credentials.password,
            }))
        .then((response) {
      _hackResponseHeader(response);
      final data = json.decode(response.body)['data'];
      this._auth = _AuthInfo(data['userId'], data['authToken']);
      completer.complete(null);
    }).catchError((error) => completer.completeError(error));
    return completer.future;
  }

  setCredentials(UserCredentials credentials) {
    this._auth = _AuthInfo(credentials.id, credentials.token);
  }

  // savePushToken stores a push token and returns its id
  Future<String> savePushToken(String id, String token, String type, String appName) {
    Completer<String> completer = Completer();
    http
        .post('${_getUrl()}/push.token',
            headers: {
              'Content-Type': 'application/json',
              'X-User-Id': _auth._id,
              'X-Auth-Token': _auth._token,
            },
            body: json.encode(<String, String>{
              'id': id,
              'type': type,
              'value': token,
              'appName': appName,
            }))
        .then((response) {
      _hackResponseHeader(response);
      final data = json.decode(response.body)['result']['_id'];
      completer.complete(data);
    }).catchError((error) => completer.completeError(error));
    return completer.future;
  }

//根据用户名或者用户id查询账户登陆状态，什么都传，那么查询自己的
  Future<String> getPresence(String userId, String username) {
    Completer<String> completer = Completer();
    String body = null;
    if (userId != null) {
      body = json.encode(<String, String>{'userId': userId});
    } else if (username != null) {
      body = json.encode(<String, String>{'username': username});
    }
    http
        .post('${_getUrl()}/users.getPresence',
            headers: {
              'Content-Type': 'application/json',
              'X-User-Id': _auth._id,
              'X-Auth-Token': _auth._token,
            },
            body: body)
        .then((response) {
      _hackResponseHeader(response);
      final data = json.decode(response.body)['presence'];
      completer.complete(data);
    }).catchError((error) => completer.completeError(error));
    return completer.future;
  }
}
