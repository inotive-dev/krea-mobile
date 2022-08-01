class LoginResponse {
  String? message;
  User? user;
  String? token;

  LoginResponse({this.message, this.user, this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  int? martId;
  String? name;
  String? memberNumber;
  String? nik;
  String? gender;
  String? birthplace;
  String? birthdate;
  String? marriageStatus;
  String? address;
  String? employeeStatus;
  String? department;
  String? email;
  String? phone;
  String? emailVerifiedAt;
  String? avatar;
  String? app;
  String? resetToken;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  User(
      {this.id,
        this.martId,
        this.name,
        this.memberNumber,
        this.nik,
        this.gender,
        this.birthplace,
        this.birthdate,
        this.marriageStatus,
        this.address,
        this.employeeStatus,
        this.department,
        this.email,
        this.phone,
        this.emailVerifiedAt,
        this.avatar,
        this.app,
        this.resetToken,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    martId = json['mart_id'];
    name = json['name'];
    memberNumber = json['member_number'];
    nik = json['nik'];
    gender = json['gender'];
    birthplace = json['birthplace'];
    birthdate = json['birthdate'];
    marriageStatus = json['marriage_status'];
    address = json['address'];
    employeeStatus = json['employee_status'];
    department = json['department'];
    email = json['email'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    avatar = json['avatar'];
    app = json['app'];
    resetToken = json['reset_token'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mart_id'] = this.martId;
    data['name'] = this.name;
    data['member_number'] = this.memberNumber;
    data['nik'] = this.nik;
    data['gender'] = this.gender;
    data['birthplace'] = this.birthplace;
    data['birthdate'] = this.birthdate;
    data['marriage_status'] = this.marriageStatus;
    data['address'] = this.address;
    data['employee_status'] = this.employeeStatus;
    data['department'] = this.department;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['avatar'] = this.avatar;
    data['app'] = this.app;
    data['reset_token'] = this.resetToken;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
