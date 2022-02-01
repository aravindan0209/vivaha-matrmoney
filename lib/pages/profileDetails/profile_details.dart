import 'package:meet_me/pages/screens.dart';
import 'package:meet_me/widget/column_builder.dart';

class ProfileDetails extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final tag;
  final String? image;
  final String? id;
  const ProfileDetails({Key? key, this.image, this.tag, this.id = '#123689'})
      : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  String isSelected = 'personalInfo';
  bool isTap = false;

  final basicDeailList = [
    {
      'title': 'Name',
      'detail': 'Samantha John',
    },
    {
      'title': 'Age',
      'detail': '26 yrs',
    },
    {
      'title': 'Gender',
      'detail': 'Female',
    },
    {
      'title': 'Height',
      'detail': '5 ft 2 in',
    },
    {
      'title': 'Weight',
      'detail': '50 kg',
    },
    {
      'title': 'Status',
      'detail': 'Never Married',
    },
    {
      'title': 'Language',
      'detail': 'English, Gujarati, Hindi',
    },
    {
      'title': 'DOB',
      'detail': '17 Oct 1992',
    },
  ];

  final habitList = [
    {
      'title': 'Drinking',
      'detail': 'Non-Drinking',
    },
    {
      'title': 'Eating',
      'detail': 'Vegetarain',
    },
    {
      'title': 'Smoking',
      'detail': 'Non-Smoking',
    },
  ];

  final hobbyList = [
    {'hobby': 'Cooking'},
    {'hobby': 'Travelling'},
  ];

  final familyDetailList = [
    {
      'title': 'Father',
      'detail': 'Maganbhai John',
    },
    {
      'title': 'Mother',
      'detail': 'Chhayaben John',
    },
    {
      'title': 'Brother',
      'detail': 'Krish John',
    },
    {
      'title': 'Sister',
      'detail': 'Krishna John',
    },
  ];

  final locationDetailList = [
    {
      'title': 'Citizenship',
      'detail': 'India',
    },
    {
      'title': 'Country',
      'detail': 'India',
    },
    {
      'title': 'City',
      'detail': 'Delhi',
    },
    {
      'title': 'Lives In',
      'detail': 'Delhi, India',
    },
  ];

  final religionDetailList = [
    {
      'title': 'Cast',
      'detail': 'Brahmin',
    },
    {
      'title': 'Subcast',
      'detail': 'Not Specified',
    },
    {
      'title': 'Religion',
      'detail': 'Hindu',
    },
  ];

  final partnerPreferencesList = [
    {
      'title': 'Age',
      'detail': '27-26 yrs',
    },
    {
      'title': 'Height',
      'detail': '5 ft 4 in - 6ft 4 in',
    },
    {
      'title': 'Status',
      'detail': 'Widrower, Divorced, Seperated',
    },
  ];

  final professionalPreferencesList = [
    {
      'title': 'Education',
      'detail': 'BCA / MCA',
    },
    {
      'title': 'Occupation',
      'detail': 'Any',
    },
  ];

  final religionPreferencesList = [
    {
      'title': 'Cast',
      'detail': 'Brahmin',
    },
    {
      'title': 'Subcast',
      'detail': 'Any',
    },
    {
      'title': 'Religion',
      'detail': 'Hindu',
    },
  ];

  final locationPreferencesList = [
    {
      'title': 'Citizenship',
      'detail': 'India',
    },
    {
      'title': 'Country',
      'detail': 'India',
    },
    {
      'title': 'City',
      'detail': 'Delhi',
    },
    {
      'title': 'Resident Status',
      'detail': 'All',
    },
  ];

  final professionalDetailList = [
    {
      'title': 'Education',
      'detail': 'BCA / MCA',
    },
    {
      'title': 'Annual Income',
      'detail': 'Not Specified',
    },
    {
      'title': 'Education Details',
      'detail': 'Not Specified',
    },
    {
      'title': 'Occupation',
      'detail': 'Software Developer',
    },
    {
      'title': 'Employed In',
      'detail': 'Private Sector',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: nestedScrollView(),
      ),
    );
  }

  nestedScrollView() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.25,
            titleSpacing: 0,
            backgroundColor: primaryColor,
            pinned: true,
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: whiteColor,
              ),
            ),
            title: Text(
              widget.id!,
              style: white20BoldTextStyle,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.tag,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: blackColor.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding * 2.0,
                  vertical: fixPadding,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isTap = !isTap;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: isTap
                                    ? const Text('Add to shortlist')
                                    : const Text('Remove from shortlist'),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: whiteColor, width: 1.5),
                            ),
                            child: Icon(
                              isTap
                                  ? Icons.star_rounded
                                  : Icons.star_border_rounded,
                              color: whiteColor,
                              size: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'ShortList'.toUpperCase(),
                          style: white10BlackTextStyle,
                        ),
                      ],
                    ),
                    widthSpace,
                    widthSpace,
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Chat()),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: whiteColor, width: 1.5),
                            ),
                            child: Image.asset(
                              'assets/icons/sms.png',
                              color: whiteColor,
                              height: 18,
                              width: 18,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'ChatNow'.toUpperCase(),
                            style: white10BlackTextStyle,
                          ),
                        ],
                      ),
                    ),
                    widthSpace,
                    widthSpace,
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Call()),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: whiteColor, width: 1.5),
                            ),
                            child: const Icon(
                              Icons.call,
                              color: whiteColor,
                              size: 18,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'CallNow'.toUpperCase(),
                            style: white10BlackTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ];
      },
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: fixPadding * 2.0,
              bottom: fixPadding,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = 'personalInfo';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                      3.9,
                      0,
                      3.9,
                      fixPadding / 3,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: isSelected == 'personalInfo'
                                ? primaryColor
                                : greyColor,
                            width: 3.5),
                      ),
                    ),
                    child: Text(
                      'Personal Info',
                      style: TextStyle(
                        color: isSelected == 'personalInfo'
                            ? primaryColor
                            : greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = 'religionInfo';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                      3.9,
                      0,
                      3.9,
                      fixPadding / 3,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isSelected == 'religionInfo'
                              ? primaryColor
                              : greyColor,
                          width: 3.5,
                        ),
                      ),
                    ),
                    child: Text(
                      'Religion Info',
                      style: TextStyle(
                        color: isSelected == 'religionInfo'
                            ? primaryColor
                            : greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = 'preferences';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                      3.9,
                      0,
                      3.9,
                      fixPadding / 3,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isSelected == 'preferences'
                              ? primaryColor
                              : greyColor,
                          width: 3.5,
                        ),
                      ),
                    ),
                    child: Text(
                      'Preferences',
                      style: TextStyle(
                        color: isSelected == 'preferences'
                            ? primaryColor
                            : greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = 'professionalInfo';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                      3.9,
                      0,
                      3.9,
                      fixPadding / 3,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isSelected == 'professionalInfo'
                              ? primaryColor
                              : greyColor,
                          width: 3.5,
                        ),
                      ),
                    ),
                    child: Text(
                      'Professional Info',
                      style: TextStyle(
                        color: isSelected == 'professionalInfo'
                            ? primaryColor
                            : greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isSelected == 'personalInfo'
              ? personalInfo()
              : isSelected == 'religionInfo'
                  ? religionInfo()
                  : isSelected == 'preferences'
                      ? preferences()
                      : professionalInfo(),
        ],
      ),
    );
  }

  personalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        personalDetails(),
        heightSpace,
        heightSpace,
        basicDetails(),
        heightSpace,
        heightSpace,
        habits(),
        heightSpace,
        heightSpace,
        hobbies(),
        heightSpace,
        heightSpace,
        familyDetails(),
        heightSpace,
        heightSpace,
        location(),
        heightSpace,
        heightSpace,
        contact(),
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
        detailButton(),
        heightSpace,
        heightSpace,
        heightSpace,
        heightSpace,
      ],
    );
  }

  personalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title('Personal Information'),
        heightSpace,
        heightSpace,
        Text(
          'A Few Lines About Me',
          style: grey14BoldTextStyle,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod...',
          style: grey13RegularTextStyle,
        ),
      ],
    );
  }

  basicDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Basic Details'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: basicDeailList.length,
          itemBuilder: (context, index) {
            final item = basicDeailList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom:
                      index == basicDeailList.length - 1 ? 0 : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  habits() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Habits'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: habitList.length,
          itemBuilder: (context, index) {
            final item = habitList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == habitList.length - 1 ? 0 : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  hobbies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Hobbies'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: hobbyList.length,
          itemBuilder: (context, index) {
            final item = hobbyList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == hobbyList.length - 1 ? 0 : fixPadding / 3),
              child: Row(
                children: [
                  Text(
                    item['hobby']!,
                    style: grey13SemiBoldTextStyle,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  familyDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Family Details'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: familyDetailList.length,
          itemBuilder: (context, index) {
            final item = familyDetailList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == familyDetailList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  location() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Location'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: locationDetailList.length,
          itemBuilder: (context, index) {
            final item = locationDetailList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == locationDetailList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  contact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Contact'),
        heightSpace,
        heightSpace,
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                'Her Mobile No',
                style: grey13SemiBoldTextStyle,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '-     +91 75********',
                style: grey13SemiBoldTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }

  detailButton() {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SubscriptionPaln()),
      ),
      child: Container(
        padding: const EdgeInsets.all(fixPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'Upgrade to unlock her contact details',
          style: white16BoldTextStyle,
        ),
      ),
    );
  }

  religionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title('Religion Information'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: religionDetailList.length,
          itemBuilder: (context, index) {
            final item = religionDetailList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == religionDetailList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  preferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title('Preferences'),
        heightSpace,
        heightSpace,
        partnerPreferences(),
        heightSpace,
        heightSpace,
        professionalPreferences(),
        heightSpace,
        heightSpace,
        religionPreferences(),
        heightSpace,
        heightSpace,
        locationPreferences(),
      ],
    );
  }

  partnerPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Partner Preferences'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: partnerPreferencesList.length,
          itemBuilder: (context, index) {
            final item = partnerPreferencesList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == partnerPreferencesList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  professionalPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Professional Preferences'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: professionalPreferencesList.length,
          itemBuilder: (context, index) {
            final item = professionalPreferencesList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == professionalPreferencesList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  religionPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Religion Preferences'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: religionPreferencesList.length,
          itemBuilder: (context, index) {
            final item = religionPreferencesList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == religionPreferencesList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  locationPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subTitle('Location Preferences'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: locationPreferencesList.length,
          itemBuilder: (context, index) {
            final item = locationPreferencesList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == locationPreferencesList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  professionalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title('Professional Information'),
        heightSpace,
        heightSpace,
        ColumnBuilder(
          itemCount: professionalDetailList.length,
          itemBuilder: (context, index) {
            final item = professionalDetailList[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index == professionalDetailList.length - 1
                      ? 0
                      : fixPadding / 3),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      item['title']!,
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '-     ${item['detail']}',
                      style: grey13SemiBoldTextStyle,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  title(String title) {
    return Text(
      title,
      style: black16BoldTextStyle,
    );
  }

  subTitle(String title) {
    return Text(
      title,
      style: black14BoldTextStyle,
    );
  }
}
