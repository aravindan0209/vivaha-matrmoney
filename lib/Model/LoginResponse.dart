class LoginResponse {
  ResponseData responseData;
  String status;
  String message;

  LoginResponse({this.responseData, this.status, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    responseData = json['responseData'] != null
        ? new ResponseData.fromJson(json['responseData'])
        : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.responseData != null) {
      data['responseData'] = this.responseData.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class ResponseData {
  String email;
  String matriId;
  String userId;
  String username;
  String gender;
  String profilePath;
  String message;
  String membershipStatus;
  String regDate;

  ResponseData(
      {this.email,
      this.matriId,
      this.userId,
      this.username,
      this.gender,
      this.profilePath,
      this.message,
      this.membershipStatus,
      this.regDate});

  ResponseData.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    matriId = json['matri_id'];
    userId = json['user_id'];
    username = json['username'];
    gender = json['gender'];
    profilePath = json['profile_path'];
    message = json['message'];
    membershipStatus = json['membership_status'];
    regDate = json['reg_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['matri_id'] = this.matriId;
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['gender'] = this.gender;
    data['profile_path'] = this.profilePath;
    data['message'] = this.message;
    data['membership_status'] = this.membershipStatus;
    data['reg_date'] = this.regDate;
    return data;
  }
}
