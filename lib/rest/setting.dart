part of rest;

abstract class _ClientSettingMixin implements _ClientWrapper {
  Future<Service> getOAuth() {
    Completer<Service> completer = Completer();
    http.get('${_getUrl()}/settings.oauth', headers: {}).then((response) {
      _hackResponseHeader(response);
      
      final body = json.decode(response.body);
      if (!body['success']) {
        throw new HttpException("Get oauth setting failed!");
      }
      
      final serviceList = body['services'] as List;
      if (serviceList == null || serviceList.length == 0) {
        throw new HttpException("Can not find oauth service!");
      }
      
      completer.complete(Service.fromJson(serviceList[0]));
    }).catchError((error) => completer.completeError(error));
    return completer.future;
  }
}
