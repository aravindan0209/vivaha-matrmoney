import 'dart:convert';
ResentJoin resentJoinFromJson(String str) => ResentJoin.fromJson(json.decode(str));
String resentJoinToJson(ResentJoin data) => json.encode(data.toJson());
class ResentJoin {
  ResentJoin({
      String userId,
      String matriId,
      String birthdate,
      String ocpName,
      String height,
      String cityName,
      String countryName,
      String photo1Approve,
      String photoViewStatus,
      String photoProtect,
      dynamic photoPswd, 
      String gender,
      String username,
      String isShortlisted,
      String isBlocked,
      String isFavourite,
      String userProfilePicture,
      String profileText,
      String caste,
      String eduDetail,
      String additionDetail,
      String stateName,
      String religionName,
      String age,
      String memberStatus,
      String status,
      String tokan,}){
    _userId = userId;
    _matriId = matriId;
    _birthdate = birthdate;
    _ocpName = ocpName;
    _height = height;
    _cityName = cityName;
    _countryName = countryName;
    _photo1Approve = photo1Approve;
    _photoViewStatus = photoViewStatus;
    _photoProtect = photoProtect;
    _photoPswd = photoPswd;
    _gender = gender;
    _username = username;
    _isShortlisted = isShortlisted;
    _isBlocked = isBlocked;
    _isFavourite = isFavourite;
    _userProfilePicture = userProfilePicture;
    _profileText = profileText;
    _caste = caste;
    _eduDetail = eduDetail;
    _additionDetail = additionDetail;
    _stateName = stateName;
    _religionName = religionName;
    _age = age;
    _memberStatus = memberStatus;
    _status = status;
    _tokan = tokan;
}

  ResentJoin.fromJson(dynamic json) {
    _userId = json['user_id'];
    _matriId = json['matri_id'];
    _birthdate = json['birthdate'];
    _ocpName = json['ocp_name'];
    _height = json['height'];
    _cityName = json['city_name'];
    _countryName = json['country_name'];
    _photo1Approve = json['photo1_approve'];
    _photoViewStatus = json['photo_view_status'];
    _photoProtect = json['photo_protect'];
    _photoPswd = json['photo_pswd'];
    _gender = json['gender'];
    _username = json['username'];
    _isShortlisted = json['is_shortlisted'];
    _isBlocked = json['is_blocked'];
    _isFavourite = json['is_favourite'];
    _userProfilePicture = json['user_profile_picture'];
    _profileText = json['profile_text'];
    _caste = json['caste'];
    _eduDetail = json['edu_detail'];
    _additionDetail = json['addition_detail'];
    _stateName = json['state_name'];
    _religionName = json['religion_name'];
    _age = json['age'];
    _memberStatus = json['member_status'];
    _status = json['status'];
    _tokan = json['tokan'];
  }
  String _userId;
  String _matriId;
  String _birthdate;
  String _ocpName;
  String _height;
  String _cityName;
  String _countryName;
  String _photo1Approve;
  String _photoViewStatus;
  String _photoProtect;
  dynamic _photoPswd;
  String _gender;
  String _username;
  String _isShortlisted;
  String _isBlocked;
  String _isFavourite;
  String _userProfilePicture;
  String _profileText;
  String _caste;
  String _eduDetail;
  String _additionDetail;
  String _stateName;
  String _religionName;
  String _age;
  String _memberStatus;
  String _status;
  String _tokan;
  String get userId => _userId;
  String get matriId => _matriId;
  String get birthdate => _birthdate;
  String get ocpName => _ocpName;
  String get height => _height;
  String get cityName => _cityName;
  String get countryName => _countryName;
  String get photo1Approve => _photo1Approve;
  String get photoViewStatus => _photoViewStatus;
  String get photoProtect => _photoProtect;
  dynamic get photoPswd => _photoPswd;
  String get gender => _gender;
  String get username => _username;
  String get isShortlisted => _isShortlisted;
  String get isBlocked => _isBlocked;
  String get isFavourite => _isFavourite;
  String get userProfilePicture => _userProfilePicture;
  String get profileText => _profileText;
  String get caste => _caste;
  String get eduDetail => _eduDetail;
  String get additionDetail => _additionDetail;
  String get stateName => _stateName;
  String get religionName => _religionName;
  String get age => _age;
  String get memberStatus => _memberStatus;
  String get status => _status;
  String get tokan => _tokan;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['matri_id'] = _matriId;
    map['birthdate'] = _birthdate;
    map['ocp_name'] = _ocpName;
    map['height'] = _height;
    map['city_name'] = _cityName;
    map['country_name'] = _countryName;
    map['photo1_approve'] = _photo1Approve;
    map['photo_view_status'] = _photoViewStatus;
    map['photo_protect'] = _photoProtect;
    map['photo_pswd'] = _photoPswd;
    map['gender'] = _gender;
    map['username'] = _username;
    map['is_shortlisted'] = _isShortlisted;
    map['is_blocked'] = _isBlocked;
    map['is_favourite'] = _isFavourite;
    map['user_profile_picture'] = _userProfilePicture;
    map['profile_text'] = _profileText;
    map['caste'] = _caste;
    map['edu_detail'] = _eduDetail;
    map['addition_detail'] = _additionDetail;
    map['state_name'] = _stateName;
    map['religion_name'] = _religionName;
    map['age'] = _age;
    map['member_status'] = _memberStatus;
    map['status'] = _status;
    map['tokan'] = _tokan;
    return map;
  }

}