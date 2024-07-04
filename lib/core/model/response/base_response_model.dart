class BaseResponseModel<T> {
  bool success;
  final dynamic data;
  final dynamic message;
  final dynamic error;

  BaseResponseModel(
      {required this.success,
      required this.data,
      required this.message,
      required this.error});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic> json)? parser) {
    try {
      if (json['data'] is List) {
        return BaseResponseModel<T>(
            success: json['succeeded'] == true,
            data: json['data'] == null
                ? null
                : parser == null
                    ? List<T>.from((json['data'] as List).map((e) => e))
                    : List<T>.from(
                        (json['data'] as List).map((x) => parser(x))),
            message: json['message'],
            error: json['error']);
      } else {
        return BaseResponseModel<T>(
            success: json['succeeded'] == true,
            data: json['data'] == null
                ? null
                : parser == null
                    ? json['data']
                    : parser(json['data']),
            message: json['message'],
            error: json['error']);
      }
    } catch (e) {
      return BaseResponseModel<T>(
          success: false,
          data: null,
          message: "parse_error",
          error: json['error']);
    }
  }
}
