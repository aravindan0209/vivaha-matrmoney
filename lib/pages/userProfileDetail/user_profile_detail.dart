import 'package:flutter/cupertino.dart';
import 'package:meet_me/pages/screens.dart';

class UserProfileDetail extends StatefulWidget {
  const UserProfileDetail({Key? key}) : super(key: key);

  @override
  _UserProfileDetailState createState() => _UserProfileDetailState();
}

class _UserProfileDetailState extends State<UserProfileDetail> {
  String isSelected = 'details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
        children: [
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          userProfile(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          tabBar(),
          isSelected == 'preferences' ? patnerPreferences() : personalDetails(),
        ],
      ),
    );
  }

  userProfile() {
    return Column(
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              image: AssetImage('assets/users/user1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        heightSpace,
        Text(
          'Azhar Khan',
          style: black14BoldTextStyle,
        ),
        Text(
          '26 yrs  •  Software Developer',
          style: grey12SemiBoldTextStyle,
        ),
        Text(
          'Delhi, India',
          style: grey12RegularTextStyle,
        ),
        heightSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(fixPadding / 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Image.asset(
                'assets/icons/chat.png',
                color: whiteColor,
                height: 15,
                width: 15,
              ),
            ),
            widthSpace,
            widthSpace,
            Container(
              padding: const EdgeInsets.all(fixPadding / 2),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(
                Icons.call_outlined,
                color: whiteColor,
                size: 15,
              ),
            ),
          ],
        ),
        heightSpace,
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua.',
          textAlign: TextAlign.center,
          style: grey12RegularTextStyle,
        ),
      ],
    );
  }

  tabBar() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isSelected = 'details';
              });
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: fixPadding / 3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected == 'details' ? primaryColor : greyColor,
                    width: 3.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Personal Details',
                    style: TextStyle(
                      color: isSelected == 'details' ? primaryColor : greyColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  widthSpace,
                  isSelected == 'details'
                      ? InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditDetails()),
                          ),
                          child: Image.asset(
                            'assets/icons/edit.png',
                            color: primaryColor,
                            height: 11,
                            width: 11,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isSelected = 'preferences';
              });
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: fixPadding / 3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        isSelected == 'preferences' ? primaryColor : greyColor,
                    width: 3.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Patner Preferences',
                    style: TextStyle(
                      color: isSelected == 'preferences'
                          ? primaryColor
                          : greyColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  widthSpace,
                  isSelected == 'preferences'
                      ? InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditPreferences()),
                          ),
                          child: Image.asset(
                            'assets/icons/edit.png',
                            color: primaryColor,
                            height: 11,
                            width: 11,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  personalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
        name(),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Expanded(
              child: age(),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: gender(),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Expanded(
              child: height(),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: weight(),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Expanded(
              child: dob(),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: status(),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Expanded(
              child: education(),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: religion(),
            ),
          ],
        ),
        heightSpace,
        heightSpace,
        language(),
        heightSpace,
        heightSpace,
        occupation(),
        heightSpace,
        heightSpace,
        livesIn(),
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
      ],
    );
  }

  name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Azhar Khan',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  age() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Age',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '28 yrs',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  gender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Male',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  height() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Height',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '5 ft 9 in',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  weight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weight',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '70 kg',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  dob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date of Birth',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '17 Oct 1992',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  status() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Single',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  education() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'BCA - MCA',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  religion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Religion',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Hindu',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  language() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Language',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'English, Gujarati, Hindi',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  occupation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Occupation',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Software Developer',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  livesIn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lives In',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Delhi, India',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  patnerPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
        preferenceAge(),
        heightSpace,
        heightSpace,
        preferenceHeight(),
        heightSpace,
        heightSpace,
        preferenceEducation(),
        heightSpace,
        heightSpace,
        preferenceReligion(),
        heightSpace,
        heightSpace,
        preferenceLocation(),
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
      ],
    );
  }

  preferenceAge() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Age',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: grey13SemiBoldTextStyle,
                    ),
                    Text(
                      '21',
                      style: black13MediumTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: grey13SemiBoldTextStyle,
                    ),
                    Text(
                      '29',
                      style: black13MediumTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  preferenceHeight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Height',
              style: black15BoldTextStyle,
            ),
            Text(
              ' (Ft In)',
              style: black13RegularTextStyle,
            ),
          ],
        ),
        heightSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: grey13SemiBoldTextStyle,
                    ),
                    Text(
                      '4 ft 6 in',
                      style: black13MediumTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: grey13SemiBoldTextStyle,
                    ),
                    Text(
                      '5 ft 4 in',
                      style: black13MediumTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  preferenceEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'MSC.IT',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  preferenceReligion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Religion',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Hindu',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }

  preferenceLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Delhi, India',
            style: black13MediumTextStyle,
          ),
        ),
      ],
    );
  }
}
