class CustomerModel {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String referee;
  final String referralCode;
  final int status;
  final String token;
  final int otpVerificationStatus;
  final int emailVerificationStatus;

  CustomerModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.referee,
    required this.referralCode,
    required this.status,
    required this.token,
    required this.otpVerificationStatus,
    required this.emailVerificationStatus,
  });
  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      mobile: json['mobile'] ?? '',
      referee: json['referee'] ?? '',
      referralCode: json['referral_code'] ?? '',
      status: json['status'] ?? 0,
      token: json['token'] ?? '',
      otpVerificationStatus: json['otpverificationstatus'] ?? 0,
      emailVerificationStatus: json['emailverificationstatus'] ?? 0,
    );
  }

  
}