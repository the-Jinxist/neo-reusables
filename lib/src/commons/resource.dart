import 'package:neo_reusables/neo_reusables.dart';

class Resource<T> {
  const Resource(this._ops, this._modelResponse, this._networkError);

  Resource.loading()
      : _ops = NetworkStatus.loading,
        _modelResponse = null,
        _networkError = "";

  Resource.idle()
      : _ops = NetworkStatus.idle,
        _modelResponse = null,
        _networkError = "";

  Resource.success(this._modelResponse)
      : _ops = NetworkStatus.successful,
        _networkError = "";

  Resource.failed(this._networkError)
      : _ops = NetworkStatus.failed,
        _modelResponse = null;

  final NetworkStatus _ops;
  final T? _modelResponse;
  final String? _networkError;

  NetworkStatus get ops => _ops;
  T? get modelResponse => _modelResponse;
  String? get networkError => _networkError;
}


