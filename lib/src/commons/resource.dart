import 'package:neo_reusables/neo_reusables.dart';

///[Resource] is a wrapper class that allows developers to properly
///encapsulate their data [_modelResponse], error[_networkError], and state[_ops] of their operation
class Resource<T> {
  const Resource(this._ops, this._modelResponse, this._networkError);

  ///[Resource.loading()] is the state of resource when your operation is in progress
  Resource.loading()
      : _ops = NetworkStatus.loading,
        _modelResponse = null,
        _networkError = "";

  ///[Resource.idle()] is obviously the idle state, ideally when your operation is not started yet
  ///Also useful for an initializer too
  Resource.idle()
      : _ops = NetworkStatus.idle,
        _modelResponse = null,
        _networkError = "";

  ///[Resource.success(_modelResponse)] should be called when your operation is successfully completed
  ///with [_modelResponse] being the data class representing the response
  Resource.success(this._modelResponse)
      : _ops = NetworkStatus.successful,
        _networkError = "";

  ///[Resource.failed(_networkError)] should be called when your operation has failed
  ///with [_networkError] being the error message resulting from the
  Resource.failed(this._networkError)
      : _ops = NetworkStatus.failed,
        _modelResponse = null;

  ///[_ops] specifies the current state of the operation, we believe the enums
  ///are self-explanatory :)
  final NetworkStatus _ops;

  ///[_modelResponse] the data representing the response of your operation, preferrably your data
  ///class
  final T? _modelResponse;

  ///[_networkError] is the error message resulting from a failed operation
  final String? _networkError;

  NetworkStatus get ops => _ops;
  T? get modelResponse => _modelResponse;
  String? get networkError => _networkError;
}
