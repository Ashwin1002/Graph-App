enum LoadingStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == LoadingStatus.initial;
  bool get isLoading => this == LoadingStatus.loading;
  bool get isSuccess => this == LoadingStatus.success;
  bool get isFailure => this == LoadingStatus.failure;

  @override
  String toString() => 'LoadingStatus.$this';
}

extension LoadingStatusExt on LoadingStatus {
  A when<A>({
    required A Function() loading,
    required A Function() success,
    required A Function() failure,
  }) {
    return switch (this) {
      LoadingStatus.failure => failure(),
      LoadingStatus.success => success(),
      _ => loading(),
    };
  }

  void listenWhen({
    required Function() failure,
    required Function() loading,
    required Function() success,
  }) {
    switch (this) {
      case LoadingStatus.loading:
        loading();
        break;
      case LoadingStatus.failure:
        failure();
        break;
      case LoadingStatus.success:
        success();
        break;
      default:
        break;
    }
  }
}
